#ifndef __READVALUE_H
#define __READVALUE_H
#include "define.h"
void ADC_Init();
u16 ADC_Get_Voltage(u8 times);
u16 ADC_Get_Current(u8 times); 
#endif