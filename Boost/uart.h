#ifndef __UART_H
#define __UART_H
#include "define.h"
void Uart_Init(u16 bote);
void Uart_Send_Byte(u8 data);
void Uart_Send_Num(u32 data);
#endif