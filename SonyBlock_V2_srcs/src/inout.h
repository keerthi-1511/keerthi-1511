/*
 * inout.h
 *
 *  Created on: 12-Oct-2023
 *      Author: SAAZ-PC10
 */


#include "uart.h"


#ifndef SRC_INOUT_H_
#define SRC_INOUT_H_





extern void WriteRegisterByte(u16 Addr, u8 data);
extern bit Get_GPI(u8 bit_pos);
extern void Set_GPOBit(u8 GPO_Channel,u8 bit_pos,bit Bit_Status);
extern void write_gpo(u32 mask, bit Value);
extern void WriteRegister4Bytes(u8 Addr,u32 data);
extern u16 ReadReg2Bytes(u16 addr);
extern u8 ReadRegByte(u16 addr);
extern void Reset_FIFO_BASE (void);
extern void Reset_UART_BASE (void);

extern u32 ReadReg4Bytes(u32 addr);



//#define UART_COMM 	0xC0000100

///GPI
#define FLASH_STATUS_BUSY 2
#define GPI_FIFO_STATUS 1
#define UART_BUFFER_EMPTY 0

///GPO
#define UART_BUF_RESET 0
#define DATA_WR_IO   0x02
#define RST_FIFO_BASE 0x05



#endif /* SRC_INOUT_H_ */
