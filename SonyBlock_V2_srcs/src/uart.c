/*
 * uart.c
 *
 *  Created on: 09-Jul-2019
 *      Author: SAAZ-PC06
 */
#include <xil_exception.h>
#include <xparameters.h>
#include <xiomodule.h>

#include "platform.h"
#include "inout.h"
//#include"IO_BUS.h"
//#include"Address_Map.h"
//#include"bit.h"
//#include "packetisation.h"
//#include "registerfile.h"
//#include"GPIO.h"



u8 rx_trig=0;
u8 uart_err_flg;

u8 RxByte;
bit RxFlag  = false;
bit DataTxFlag =false;
bit SerDetectedFlag;

u8 Com_ctrl;

u8 data;



#define UART_COMM 	0x0100

#define ATOM_SER_ID  0xB6

#define ANA_HEADER 0xA5

#define COMM_PATH 0xC5       //0xC5                         // python usb c1, camera link c2, python hd c3, viperhd c4


extern void WriteRegisterByte(u16 Addr, u8 data);

void UART_Send2Bytes(u16 *tx);
void Set_Baud(u32 baud);
void Ping_Response(void);

XIOModule iomodule;
u32 *UARTRxBfr  ;

void ANA_UART_SendByte(u8* transmit_byte)
{
	while(XIOModule_Send(&iomodule,transmit_byte,1)==0);
}
void Ping_Response(void)
{
	u16 Temp16=0XB6A6;
	UART_Send2Bytes(&Temp16);
	u8 Temp8=COMM_PATH;
	ANA_UART_SendByte(&Temp8);
//	WriteRegisterByte(BAUD_RATE, 0x04);
//	                    	data= ReadRegByte(BAUD_RATE);
//	                    	ANA_UART_SendByte(&data);

}
void UART_Send2Bytes(u16 *tx)
{
   u8 *p;
    u16 i;
    p=(u8 *)tx;
    for(i=0;i<2;i++)
       {
       	 while(XIOModule_Send(&iomodule,p+1-i,2-i)==0);
       }

}

void uart_isr(void* ref)                 ///what is the use of getting ref???
{
//	 UARTRxBfr       = (u32 *)0x80000000;
//	 RxByte = *UARTRxBfr;

	u8 RxByte_Data;
		  // Flag to Indicate receive of a New Data
		RxByte_Data   = *(u32 *)0x80000000;
		WriteRegisterByte (UART_COMM,RxByte_Data);
//		 RxByte = ReadRegByte(UART_COMM);
//			  ANA_UART_SendByte(&RxByte);

//	 RxFlag      = true;  // Flag to Indicate receive of a New Data
	 XIOModule_Enable(&iomodule, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);
}

void Set_Baud(u32 baud)
{
	XIOModule_SetBaudRate(&iomodule,baud);
}

