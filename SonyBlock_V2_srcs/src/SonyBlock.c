

//#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include <xiomodule.h>
#include <sleep.h>
#include "uart.h"

#include "Packetisation.h"
//#include "bit.h"
//#include "Timers.h"
#include "inout.h"



bit SerDetectedFlag1 = false;







int main()
{

init_platform();

XIOModule_Initialize(&iomodule, XPAR_IOMODULE_0_DEVICE_ID);
microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);
XIOModule_Start(&iomodule);


/* Use XioModule_Enable instead of low-level XioModule_EnableIntr */
XIOModule_Connect(&iomodule,XIN_IOMODULE_UART_RX_INTERRUPT_INTR, uart_isr, NULL);
XIOModule_Enable(&iomodule, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);


microblaze_enable_interrupts();




//cleanup_platform();
bit RxFlag1;

while(1)

{

	RxFlag1 = !(Get_GPI(UART_BUFFER_EMPTY));  //getting the empty status


	 if(RxFlag1) //checking if the fifo is not empty, then we read data from fifo
	 {

	  RxByte = ReadRegByte(UART_COMM);

	 if ((SerDetectedFlag1 ==false))  //&&(RxFlag1)) //RxFlag -- this should not be here
		{
		 if(RxByte == ATOM_SER_ID)
		 {



		    	 SerDetectedFlag1 = true ;

		    	 DataTxFlag      = true;

//		    	 RxFlag = false;
		 }

		  }


	  if(DMAUploadMode)
	 {
		 DMA_Mode_DT();
//		 RxFlag = false;
	 }
	  else
	  {
		  ANA_PacketState();
	  }





	 }
//	 else if((RxFlag1)&&(!DMAUploadMode))

//	 if(!DMAUploadMode)
//	{
//
//	}



	 if(DMAModeReqFlag)
		 DMAModeCheck();


	 if(DataTxFlag)
	 {
		 Ping();
	 }

//	 if (ChecksumFlag)				///testing
//	 {
//
//		 ChecksumFlag = false;
//		 Send_Packet();
//
//	 }

	 if(ErrorFlag)
	 {
//		 ANA_UART_SendByte(&checksum) ;			///testing
//		 Send_Packet();
		 ErrorFlag=false;

		 		Reset_UART_BASE();

	 }

     XIOModule_Enable(&iomodule, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);//Re Enabling the UART Innterput to trigger callback function
}

}
