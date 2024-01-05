/*
 * Packetisation.h
 *
 *  Created on: 09-Oct-2023
 *      Author: SAAZ-PC10
 */

//#include "bit.h"
#include "uart.h"

#ifndef SRC_PACKETISATION_H_
#define SRC_PACKETISATION_H_


extern u8 PacketTimeOut;





typedef enum CommPkt {Prefix, RdWr, Cmd_Addr, ByteCount, Data, CHECKSUM,
	                  FLIR_CRC1, FLIR_CRC2, FLIR_Rsrv} CommPkt;

typedef enum ErrorCond {
	CAM_OK     ,
	                     COM_TIMEOUT,   // Timeout between two packet bytes
	                     BAD_HEADER ,   // First Byte Doesn't Match the Header
	                     BAD_CHECKSUM    ,   // CRC Failed
//	                     BAD_PKT    ,   // Command Packet size of CMD values incorrect
	                     BAD_RW     ,   // Attempt to write a ReadOnly Register
//	                     BAD_ADDR   ,   // Attempt to access a non-existing Address
//	                     BAD_DATA   ,   // Data no. of bytes or data value incorrect

                        } ErrorCond;




#define ANA_HEADER 0xA6
#define ATOM_SER_ID  0xB0
#define COMM_TIMEOUT      30



extern void ANA_PacketState(void);
extern void Ping(void);
extern void CrcCheck(void);
extern void Send_Packet(void);
extern void DMAModeCheck(void);
extern void DMA_Mode_DT(void);

extern u8  Temp8;
extern u16 Temp16;
extern u16 i,j;

//extern CommPkt  RxState;
extern ErrorCond Errors ;
extern bit ErrorFlag   ;
extern bit ChecksumFlag;
extern u8 checksum ;

extern bit DMAModeReqFlag;
extern bit DMAUploadMode;
//extern bit Mn_MCSBusy;		later



//extern bit MCUBusy;		later
extern bit PacketRXFlg;



#endif /* SRC_PACKETISATION_H_ */
