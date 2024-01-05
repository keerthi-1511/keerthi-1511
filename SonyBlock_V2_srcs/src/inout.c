/*
 * inout.c
 *
 *  Created on: 12-Oct-2023
 *      Author: SAAZ-PC10
 */


#include <xil_exception.h>
#include <xparameters.h>
#include <xiomodule.h>
//#include "bit.h"
#include "uart.h"


void WriteRegisterByte(u16 Addr, u8 data);
bit Get_GPI(u8 bit_pos);
void WriteRegister4Bytes(u8 Addr,u32 data);
void write_gpo(u32 mask, bit Value);
u8 ReadRegByte(u16 addr);
void Reset_FIFO_BASE (void);
void Reset_UART_BASE (void);
void Set_GPOBit(u8 GPO_Channel,u8 bit_pos,bit Bit_Status);

u32 ReadReg4Bytes(u32 addr);
u16 ReadReg2Bytes(u16 addr);
u16 Temp16;
u8 Temp8;


#define UART_BUF_RESET 0
#define RST_FIFO_BASE 0x05
u32 gpo_1 = 0x0000;
u16 i;



void WriteRegisterByte(u16 Addr, u8 data)
 {

	 XIOModule_IoWriteByte(&iomodule, Addr,data);
 }



bit Get_GPI(u8 bit_pos)
{
	u32 gpi=0;
	gpi=XIOModule_DiscreteRead(&iomodule,1);
	if((gpi>>bit_pos)&1)
		return true;
	else
		return false;
}


void WriteRegister4Bytes(u8 Addr,u32 data)
{
	u8 Temp8;

    Temp8=0;
    Temp8 = data>>24;
	WriteRegisterByte(Addr,Temp8);
	Temp8 = data>>16;
	WriteRegisterByte(Addr+1,Temp8);
	Temp8 = data>>8;
	WriteRegisterByte(Addr+2,Temp8);
	Temp8 = data;
	WriteRegisterByte(Addr+3,Temp8);

}

u8 ReadRegByte(u16 addr)
{

	 u8 data_out;
  	 data_out=XIOModule_IoReadByte(&iomodule,addr);
	 return data_out;

 }

void write_gpo(u32 mask, bit Value)
{
	if (Value == true)
	{
	  gpo_1 = gpo_1 | mask;
	}
	else
	{
	  gpo_1 = gpo_1 & ~mask;
	}

	XIOModule_DiscreteWrite(&iomodule,(unsigned) 1 ,gpo_1);
}

void Set_GPOBit(u8 GPO_Channel,u8 bit_pos,bit Bit_Status)
{
	u32 temp=0;

	if(Bit_Status)
	{
		gpo_1=gpo_1 | (1<<bit_pos);
	}
	else
	{
		temp = (1<<bit_pos);
		temp = ~temp;
		gpo_1 = gpo_1 & temp;
	}
	XIOModule_DiscreteWrite(&iomodule,GPO_Channel,gpo_1);


}



void Reset_FIFO_BASE (void)
{
	u8  Temp8;
	//---- Included just to reset FIFO
//	write_gpo		(RST_FIFO_BASE, true);
//	usleep(5000);
//	write_gpo		(RST_FIFO_BASE, false);

	Set_GPOBit		(1,RST_FIFO_BASE, true);
	for(i=0;i<5000;i++);
	Set_GPOBit		(1,RST_FIFO_BASE, false);

}

void Reset_UART_BASE (void)
{
//	write_gpo		(UART_BUF_RESET, true);
//		usleep(5000);///for now you add for loop; for 1000 count; just for givinngs some delay

//	for(j=0;j<1000;j++)
//		{
//		for(i=0;i<5000;i++)
//			;
//		}

//		write_gpo		(UART_BUF_RESET, false);





		Set_GPOBit		(1,UART_BUF_RESET, true);
		for(i=0;i<5000;i++)
					;
			Set_GPOBit		(1,UART_BUF_RESET, false);
}


u32 ReadReg4Bytes(u32 addr)
{


	 u32 data32=0;

	 data32  = ReadReg2Bytes(addr);
	 data32  = (data32 << 16);
	 Temp16  = ReadReg2Bytes(addr+2);
	 data32  = data32 + Temp16;


	 return data32;
}

u16 ReadReg2Bytes(u16 addr)
{
	 u16 data16=0;

	 data16  = ReadRegByte(addr);
	 data16  = (data16 << 8);
	 Temp8 =ReadRegByte(addr+1);
	 data16 =data16 + Temp8;


	 return data16;
}
