/*
 * UART.h
 *
 *  Created on: 09-Jul-2019
 *      Author: Jayaram
 */

#ifndef SRC_UART_H_
#define SRC_UART_H_



typedef enum bit {false,true} bit;




XIOModule iomodule;



extern void uart_isr(void* ref);

extern void ANA_UART_SendByte(u8* transmit_byte );
extern void UART_Send2Bytes(u16 *tx);
extern void Set_Baud(u32 baud);
extern void Ping_Response(void);



#define UART_COMM 	0x0100

extern u8 uart_err_flg;
extern bit RxFlag ;
extern bit DataTxFlag;
extern u8 RxByte;
//extern bit SerDetectedFlag;
extern u8 Com_ctrl;

//extern u8 RxByte_Data;

extern XIOModule iomodule;
extern u32 *UARTRxBfr  ;


//#define COMM_PATH 0xC1
#endif /* SRC_UART_H_ */
