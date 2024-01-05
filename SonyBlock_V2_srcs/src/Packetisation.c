/*
 * Packetisation.c
 *
 *  Created on: 09-Oct-2023
 *      Author: SAAZ-PC10
 */

#include <xil_exception.h>
#include <xparameters.h>
#include <xiomodule.h>
//#include "bit.h"
#include "inout.h"
//#include "Timers.h"
#include "uart.h"
//#include "Registers.h"

u8 PacketTimeOut;


//#define GOLDEN 1


typedef enum CommPkt {Prefix, RdWr, Cmd_Addr, ByteCount, Data, Checksum,
	                  FLIR_CRC1, FLIR_CRC2, FLIR_Rsrv} CommPkt;

typedef enum ErrorCond { CAM_OK     ,
	                     COM_TIMEOUT,   // Timeout between two packet bytes
	                     BAD_HEADER ,   // First Byte Doesn't Match the Header
	                     BAD_CHECKSUM    ,   // CHECKSUM Failed
//	                     BAD_PKT    ,   // Command Packet size of CMD values incorrect
	                     BAD_RW     ,   // Attempt to write a ReadOnly Register
//	                     BAD_ADDR   ,   // Attempt to access a non-existing Address
//	                     BAD_DATA   ,   // Data no. of bytes or data value incorrect

                        } ErrorCond;

                        typedef enum FlashTransfer { Init, EraseBusy, EraseDone, TransferComplete }  FlashTransfer;
                        typedef enum FlashMode {Firmware/*,Table,SDRAM,PasswordPack,FactoryDefaults,UserDefaults,SbNUC_Tst_Imj, Reticle,Firmware_update*/, Page_erase, Page_write } FlashMode;


#define ATOM_SER_ID  0xB0
//#define COM_PATH 0xB0;
#define ANA_HEADER 0xA6
#define ANA_RD     0x52    // Command to read Data from the Register
#define ANA_WR     0x57    // Command to write Data to the Register

#define COMM_TIMEOUT      30
#define ANA_NO_OPR 0x00

                        		////////////// REGISTERS ////////////////

#define FLASH_OPN		0x01  // 2,3,4- flash address 5 - MEMORY_CMD
#define FILE_SIZE		0x06
#define FIRMWARE_UPDATE 0x07
#define FLASH_STATUS	0x08

#define FIRMWARE_TYPE 0x0A
                        		/////TEST/////
#define P4_BYTE		0x02
#define CHIP_ID		0x01



                        ////////////////////////////////// FLASH ///////////////////////
                        ////////// MEMORY CMD //////////////

#define PAGE_WRITE       0x03
#define PAGE_READ		 0X04
#define SECTOR_ERASE	 0X05
                        ///////////////////////////////////
#define PAGE_ERASE	 0X05


//#define UPDATE_IMAGE 0x12 //Firmware Update Golden			unused x2
//#define UPDATE_IMAGE_2 0x82


//#define CAM_IMAGE	           0x00000000  //0000 // Start Address offset of Bit File
//#define CAM_IMAGE_1            0x003B0000			unused x2


//#define FLASH_BASE_ADDRESS 0xC0000200

#define FIFO_BASE 0x0200
//#define FIFO_BASE 0x00020000
#define UART_FIFO_BASE 0x0F00  ///this address is a placeholder, need to create fifo and assign address in rtl???


#define SECTORSIZE 65536
//#define SUBSECTORSIZE 4096	unused x 2
//#define PAGESIZE 256



#define FLASHBUSY 0x29
#define FLASHIDLE 0x00


u8  Temp8;
u16 Temp16;
u32 Temp32;
u16 i,j;

CommPkt  RxState = Prefix;
ErrorCond Errors = CAM_OK ;
bit ErrorFlag    = false  ;
bit PacketFail = false;
bit PacketRXFlg = false;

u8  ErrorVal;
u16 PacketByteCount=0;
//bit MCUBusy  = false;		later
u8 data_rx_in [255];   // packet to receive/transmit data in non-dma mode
u8 SendPacket [5];
u16 RxTemp;
u8 Fun_Bytecnt;
u8 TempBytecnt;///
bit ChecksumFlag = false;
u8 checksum = 0 ;

FlashTransfer     FlashXfr = EraseBusy;
FlashMode Flashmode;
u16 SectorCount;
bit FIFOStatus;
u16 PacketCount;
bit FlashEraseDone;
bit EraseDoneResponse;
bit DMAUploadMode = false;
u32 Imagesize;
u32 Flash_Address;
bit DMAModeReqFlag = false;
//bit Mn_MCSBusy = false;		later
//u16 PhyAddr;
bit EraseCompleted = false;
u16 PacketSize = 0;
u8 chkFIFOsum = 0;
u8 DMA_status = 0;
bit Erase_only = false;





void Send_Packet(void);
void Write_Data(u8 PhyAddr);
void Read_Data(void);
void Ping(void);
void ANA_ExecuteCmd(u8 Phy_Addr,u8 Data);
void DMAModeCheck(void);
//void FlashErase(u32 BaseAddr, u16 SectorCnt, bit SectorSelect);
void DMA_Mode_DT(void);


void ANA_PacketState(void);

void ANA_PacketState(void)
{
	 ErrorFlag     = false;
	 Errors        = CAM_OK;
	// PrintFlg      = false;
	 PacketTimeOut = COMM_TIMEOUT;   // Reset Timer because a Byte is received
	 PacketFail    = false;  // Received a New Packet Header


		switch (RxState)
		{

		case Prefix:
			             PacketByteCount = 0;
			             checksum = 0;
			              if (RxByte == ANA_HEADER)
			                {
//				later			 MCUBusy                       = true;  // Valid Serial Packet Communication in Progress
			        	     RxState                       = RdWr;
			        	     data_rx_in[PacketByteCount++] = RxByte;
			     		     PacketRXFlg                   = true;
			     		     checksum +=RxByte;
			                }
			          else if(RxByte == ATOM_SER_ID)
			        	   {
			        		 PacketRXFlg     = false;
			        		 DataTxFlag      = true;
			        		 RxState	=Prefix;
			        	   }
			        	 else
			        	 {
			        		 ErrorFlag       = true;
			        		 Errors          = BAD_HEADER;
			        		 ErrorVal        = RxByte;
			        	     PacketRXFlg     = false;
			        	     RxState = Prefix;
			        	 }
                     break;
		case RdWr:
			          if ((RxByte == ANA_RD)||(RxByte == ANA_WR))	//||(RxByte == ANA_NO_OPR))
                       {
			              RxState                       = Cmd_Addr;
			              data_rx_in[PacketByteCount++] = RxByte;
//			     		  PacketRXFlg                   = true;
			              checksum +=RxByte;
                       }
		              else
		               {
				        	 ErrorFlag               = true;
					         Errors                  = BAD_RW;
					         PacketRXFlg             = false;
			        	     RxState                 = Prefix;
		               }
		                 break;
		case Cmd_Addr:
//			     ErrorFlag = Check_for_ANA_Command(); // To Check whether the CMD is Valid
//			     if(ErrorFlag==false)
			     {
		              RxState                        = ByteCount;
		              data_rx_in[PacketByteCount++]  = RxByte;
//			     	  PacketRXFlg                    = true;
		              checksum +=RxByte;

			     }
//			     else
//			     {
//			      	          PacketRXFlg         = false;
//       	                      RxState             = Prefix;
//			     }
             break;

		case ByteCount:
                 // Write Command Packet
                 if(data_rx_in[1] == ANA_WR)
                  {
//                     if (data_rx_in[2] == ANA_TEMPORARY_REGISTER2)//NO op need
//		             {
                    	  data_rx_in[PacketByteCount++] = RxByte;
                    	 Fun_Bytecnt  = RxByte;
                    	 RxState      =  Data;

//		             }
//                     else
//                     {
////			            if(Fun_Bytecnt  == RxByte)
////			            {
////		            			  RxState =  Data;
////			            		  data_rx_in[PacketByteCount++] = RxByte;
////
////
////				        }
////			            else
//			             {
//						       	 ErrorFlag                  =  true;
//						         Errors                     =  BAD_PKT;
//						         PacketRXFlg                =  false;
//					       	     RxState                    =  Prefix;
//			             }
//                     }
                 }
                 // Read command Packet
                else  if(data_rx_in[1] == ANA_RD)
                {
//                	if (data_rx_in[2] == ANA_TEMPORARY_REGISTER2)
//                	{
//                		data_rx_in[PacketByteCount++] = RxByte;
//           			  	RxState =  Data;        // Read request for Temporary Register
//           			    Fun_Bytecnt = RxByte;
//
//                	}
//                	else
//                	{
//                    	if (!RxByte)
//                    	{
                			Fun_Bytecnt  = RxByte;
                    		data_rx_in[PacketByteCount++] = RxByte;
              		       RxState =  Checksum;

//                    	}
//                    	else
//                  	     {
//      			        	ErrorFlag       =  true;
//      				        Errors          =  BAD_PKT;
//      				        PacketRXFlg     =  false;
//      		        	    RxState         =  Prefix;
//                  	    }
//                	}


                }
//                else  if(data_rx_in[1] == ANA_NO_OP)
//                {
//                	data_rx_in[PacketByteCount++] = RxByte;
//                 	RxState =  Data;        // Read request for Temporary Register
//                    Fun_Bytecnt = RxByte;
//
//                }
	              TempBytecnt = Fun_Bytecnt;
	              checksum +=RxByte;
			          break;

		case Data:
			data_rx_in[PacketByteCount++] = RxByte;
			    TempBytecnt--;
			PacketRXFlg = true;

			if(TempBytecnt)
				RxState =  Data;
			else
				RxState =  Checksum;

			checksum +=RxByte;
           break;

		case Checksum:

			checksum = (255 - checksum)+1;
      		  data_rx_in[PacketByteCount++] = RxByte;
	          PacketRXFlg                   = false;
  	          RxState                       = Prefix;
  	          if (RxByte == checksum)
  	          {
  	        	  ChecksumFlag                  = true;
  	        	  if ( data_rx_in[RdWr] == ANA_WR)
  	        	  {
  	        		Write_Data(data_rx_in[2]);

  	        		if((data_rx_in[4]!= SECTOR_ERASE ) &&
  	        		   (data_rx_in[2]!= FIRMWARE_UPDATE) )
  	        			Send_Packet();

  	        		ANA_ExecuteCmd(data_rx_in[2],data_rx_in[4]);
//  	        		TriggerRegUpdate(data_rx_in[2]);			is this required? no.
  	        	  }
  	        	  else
  	        		Read_Data();
  	          }
  	          else
  	          {
  	        	ErrorFlag                  =  true;
  	        	Errors                     =  BAD_CHECKSUM;
  	        	PacketRXFlg                =  false;
  	        	RxState                    =  Prefix;

  	          }


     	 break;
		default:
			   break;
		}
//	RxFlag = false;   // Wait for the next Byte to be received
}



void Ping(void)
{
	Temp16 = ATOM_SER_ID<<8 | ANA_HEADER ;

				 UART_Send2Bytes(&Temp16);
//				 Temp8       = COM_PATH;//0xc1;
//				 ANA_UART_SendByte(&Temp8);
				 DataTxFlag  = false;
//				 MCUBusy     = false; 								later

}


void Send_Packet(void)
{
	u8 check_sum = 0;

	  SendPacket[0] = ANA_HEADER;
	  SendPacket[1] = Errors;
     SendPacket[2] = data_rx_in[2];
//     SendPacket[3] = ErrorVal;

     for(i=0;i<3;i++)
     {
    	 check_sum  +=SendPacket[i];
    	 ANA_UART_SendByte(&SendPacket[i]);

     }

     check_sum = (255 - check_sum)+1;
     ANA_UART_SendByte(&check_sum);
//     UART_SendByte(&EByte);



}


void ANA_ExecuteCmd(u8 Phy_Addr,u8 Data)
{
	switch (Phy_Addr)
		{

		case FLASH_OPN:
				if(Data== PAGE_ERASE)
				{

					DMAModeReqFlag = true;
					SectorCount    = 1;
					Flashmode=Page_erase;


				}
				if(Data== PAGE_WRITE)
				{
					DMAUploadMode      = true;
					Imagesize = 256;
					Flashmode=Page_write;
					XIOModule_Timer_Stop(&iomodule, 0);


				}
				if(Data== PAGE_READ)
				{
					Reset_FIFO_BASE();

						Set_GPOBit(1, DATA_WR_IO, true);
						Set_GPOBit(1, DATA_WR_IO, false);

						while((FIFOStatus = Get_GPI(FLASH_STATUS_BUSY)));
//
						for(i=0;i<256;i++)
							{
								Temp8 = ReadRegByte(FIFO_BASE);
								ANA_UART_SendByte(&Temp8);
							}
//
//					WriteRegisterByte(FLASH_OPN,0x00);

				}
//
//				if (Data == CHIP_ID)																///maybe not used ???
//				{
//					WriteRegister4Bytes(FLASH_OPN+1,0);
//					WriteRegisterByte(FLASH_OPN,CHIP_ID);
//								Set_GPOBit( 1,DATA_WR_IO, true);
//								for(i=0;i<1;i++);
//								Set_GPOBit(1, DATA_WR_IO, false);
//				}
//				if(Data == P4_BYTE)														///maybe not used ???
//				{
//
//					WriteRegisterByte(FLASH_OPN,P4_BYTE);
//					Set_GPOBit(1, DATA_WR_IO, true);
//					for(i=0;i<1;i++);
//					Set_GPOBit(1, DATA_WR_IO, false);
//				}

			break;


			Imagesize = data_rx_in[4];
						Imagesize = (Imagesize<<8) + data_rx_in[5];
						Imagesize = (Imagesize<<8) + data_rx_in[6];
						Imagesize = (Imagesize<<8) + data_rx_in[7];
			break;


		case FIRMWARE_UPDATE:
//			if((Data == UPDATE_IMAGE) )//||(Data == UPLOAD_FACT_TABLE)  )
					{
						SectorCount = data_rx_in[4];
						SectorCount = (SectorCount<<8) | data_rx_in[5];
						Imagesize	= (SectorCount * 65536);  //65536




									Flash_Address = data_rx_in[6];
									Flash_Address = (Flash_Address<<8) | data_rx_in[7];
									Flash_Address = (Flash_Address<<8) | data_rx_in[8];
									Flash_Address = (Flash_Address<<8) | data_rx_in[9];

						Flashmode         = Firmware;

						DMAModeReqFlag    = true; //Firmware Update Request
//						Mn_MCSBusy        = true;						later
					}
//					else if((Data == UPDATE_IMAGE_2) )//||(Data == UPLOAD_FACT_TABLE)  )
//					{
//						Flashmode         = Firmware_update;
//
//						DMAModeReqFlag    = true; //Firmware Update Request
////						Mn_MCSBusy        = true;				later
//					}
			break;



		default :
			break;
		}
}

void DMAModeCheck(void)
{
	switch (FlashXfr)
			{
	/*   case Init:
		   Temp8 = 0x1D;
		   ANA_UART_SendByte(&Temp8);		///testing

//		   NUC_Check_flag=false;

//		   if((Flashmode == Firmware)||(Flashmode == Firmware_update))
//		   {
//
//			   SectorCount    = 58;  //59;
//
//			    WriteRegisterByte(FLASH_OPN,SECTOR_ERASE);
//		   }


				  FlashXfr       = EraseBusy;
//				  FlashEraseDone = false;				later

				   break;	*/
	   case EraseBusy:

		   FIFOStatus = Get_GPI(FLASH_STATUS_BUSY);
				   if (!FIFOStatus)
				   {


					if(Flashmode==Firmware)
					   {
//					       FlashErase(CAM_IMAGE, --SectorCount , true);

				    	   WriteRegisterByte(FLASH_OPN, PAGE_ERASE);

					       for(i=0;i<SectorCount;i++)
					       {
					    	   WriteRegister4Bytes(FLASH_OPN+1, Flash_Address + i*SECTORSIZE); //SECTORSIZE

					    	   Set_GPOBit(1, DATA_WR_IO, true);
					    	   Set_GPOBit(1, DATA_WR_IO, false);

//					    	   	UART_Send2Bytes(&i);
//					    	   	ANA_UART_SendByte(&Temp8);

					    	   while(   Get_GPI(FLASH_STATUS_BUSY) == true  )   ; //will be in while loop until Flash is busy

					    	   	if(i==(SectorCount-1))
					    	   		EraseCompleted = true;
					       }

					   }
					/*
					   else if(Flashmode==Firmware_update)
					   {
//						   FlashErase(CAM_IMAGE_1, --SectorCount , true);

						   for(i=SectorCount;i>=0;i--)
						   					       {
						   					    	   WriteRegister4Bytes(MEMORY_CMD+1, CAM_IMAGE_1 + i*SECTORSIZE);

						   					    	   	write_gpo( DATA_WR_IO, true);
						   					    	   	write_gpo( DATA_WR_IO, false);

						   					    	 UART_Send2Bytes(&i);
						   					    	ANA_UART_SendByte(&Temp8);
						   					  	if(!i)
						   					  	EraseCompleted = true;
						   					       }
					   }
					   */
//					   else

						   if(Flashmode==Page_erase)
					   {
							   Set_GPOBit(1, DATA_WR_IO, true);
							   Set_GPOBit(1, DATA_WR_IO, false);

//							   write_gpo(DATA_WR_IO, true);
//							   write_gpo(DATA_WR_IO, false);



							while(   Get_GPI(FLASH_STATUS_BUSY) == true  )   ; //will be in while loop until Flash is busy
							EraseCompleted = true;


					   }

				   }

				   if (EraseCompleted)
				   {
					 FlashXfr  = EraseDone;
					 PacketCount=0;


				   }
				   break;
	   case EraseDone:
		   WriteRegister4Bytes(FLASH_OPN+1, 0x00000000);//0x00000000
//		   FIFOStatus = Get_GPI(FLASH_STATUS_BUSY);
//						 if (!FIFOStatus)
//						{
//						  WriteRegisterByte(FLASH_OPN,0x00);
						  FlashEraseDone    = true;
//						  if(EraseCompleted)
//						  {
							  Send_Packet();
							  EraseCompleted = false;

							  if(Flashmode==Firmware)
								  DMAUploadMode      = true;

//						  }

//							 EraseDoneResponse  = false;


							     FlashXfr          = EraseBusy;
								 DMAModeReqFlag    = false;
//								 XIOModule_Timer_Start(&iomodule, 0);
//								 WriteRegisterByte(FLASH_OPN,0x00);
//						}



						  // Stop the timer Operation
//						   XIOModule_Timer_Stop(&iomodule, 0);

						 break;

	   default:
					  break;

	     }

}



//void FlashErase(u32 BaseAddr, u16 SectorCnt, bit SectorSelect)
//{
//	u32 SectorSize = 0;
//
//
//	if (SectorSelect == true)
//	{
//		SectorSize = SECTORSIZE;
//
//	}
//	else
//	{
//		SectorSize = SUBSECTORSIZE;
//	}
//
//	WriteRegister4Bytes(MEMORY_CMD+1, BaseAddr + SectorCnt*SectorSize);
//
//	write_gpo( DATA_WR_IO, true);
//	write_gpo( DATA_WR_IO, false);
//
//}

void Write_Data(u8 PhyAddr)
{
	for(i=0;i<(Fun_Bytecnt);i++)
		if((data_rx_in[2]!= FIRMWARE_UPDATE))
			{

				WriteRegisterByte(PhyAddr+i,data_rx_in[4+i]);

			}
}


void Read_Data(void)
 {
	u8 chek_sum=0;
	 u8 data_out[5];
		u16 i;
			         data_out[0]  =  data_rx_in[0];
				   	 data_out[1]  =  Errors;
				   	 data_out[2]  =  data_rx_in[2];

if(((data_rx_in[2] == FIRMWARE_TYPE)))
{
#ifdef GOLDEN
	data_out[4] = 71;//"G";
#else
	data_out[4] = 85;//"U";
#endif
}


else  	 if ((data_rx_in[2] == FLASH_STATUS))
					{

						if (DMAModeReqFlag==true)
						 {
								  if (FlashEraseDone)
								  {
									  data_out[4] = FLASHIDLE;
									  //
									  // Flag to suggest that PC has read the Flash Erase status
									  // We need to wait for System Read of this flag to enter in
									  // DMA Mode. We can not enter in DMA mode before this flag is read
									  //
//									  EraseDoneResponse = true;

								  }
								  else
								  {
									  data_out[4]       = FLASHBUSY;
//									  EraseDoneResponse = false;
								  }
						 }
						else
						{
							data_out[4] = 0xEE;
	 					}
					}
				   	 else
				   	 {
				   		 for(i=0;i<Fun_Bytecnt;i++)
				   		 {
				   			data_out[4+i] = ReadRegByte(data_rx_in[2+i]);
				   		 }
				   	 }

				   	 data_out[3]   = Fun_Bytecnt;
				   					for(i=0;i<(Fun_Bytecnt+4);i++)
				   					{
				   						ANA_UART_SendByte(&data_out[i]);
				   						chek_sum += data_out[i];
				   					}
				   					ANA_UART_SendByte(&chek_sum);
 }


void DMA_Mode_DT(void)
{

	if(PacketSize==0)
	{
		Reset_FIFO_BASE();
		chkFIFOsum = 0;
	}

	if(PacketSize<256)
		 {
			chkFIFOsum += RxByte;

			WriteRegisterByte(FIFO_BASE,RxByte);

			PacketSize++	;
		 }

	else if(PacketSize==256)
	{
		chkFIFOsum = (255 - chkFIFOsum) +1;

		if(RxByte == chkFIFOsum)

		{

			 WriteRegisterByte(FLASH_OPN,PAGE_WRITE);
							 if(Flashmode == Firmware)
							{
								 WriteRegister4Bytes(FLASH_OPN+1, Flash_Address+(256*PacketCount));

//
//								 Temp32 = Flash_Address+256*PacketCount;			///Testing 5???
//								 Temp16 = Temp32 >>16;
//								 UART_Send2Bytes(&Temp16);
//								 Temp16 = Temp32;
//								 UART_Send2Bytes(&Temp16);

							}




								Set_GPOBit(1,DATA_WR_IO, true);
								Set_GPOBit(1,DATA_WR_IO, false);

//								 for(i=0;i<700;i++);

//								 write_gpo(DATA_WR_IO, true);
//								 write_gpo(DATA_WR_IO, false);

							DMA_status = 0x55;
							PacketSize = 0;
							Imagesize -= 256;
							PacketCount++;

							while((FIFOStatus = Get_GPI(FLASH_STATUS_BUSY)));
							chkFIFOsum=0;
							ANA_UART_SendByte(&DMA_status);
							UART_Send2Bytes(&PacketCount);

		}

		else
		{
		for(i=0;i<256;i++)
		Temp8=ReadRegByte(FIFO_BASE);

		chkFIFOsum=0;
		DMA_status      = 0xEE;
		PacketSize = 0;
		ANA_UART_SendByte(&DMA_status);
		UART_Send2Bytes(&PacketCount);
		}
	}

	if(!Imagesize)
				{
					DMA_status   = 0x66;
					ANA_UART_SendByte(&DMA_status);

//					WriteRegisterByte(FLASH_OPN,0x00);

					DMAUploadMode     = false;

//					XIOModule_Timer_Start(&iomodule, 0);
					 FlashEraseDone    = false;



				}




}

