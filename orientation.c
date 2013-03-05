/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "orientation.h"
#include "delay.h"
#include "usart.h"
#include "stm32f4_discovery.h"
#include <stdio.h>

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int distance[4][3];
int distance_out[4];
int next_wr[4];
char b[50];
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void send_ultrasound(uint8_t ultrasound,int16_t distance_in)
{
	if(next_wr[ultrasound-1] <=2)
	{
		distance[ultrasound-1][next_wr[ultrasound-1]] = distance_in;
		next_wr[ultrasound-1]++;
	}else if(next_wr[ultrasound-1] == 3)
	{
		next_wr[ultrasound-1] = 0;
		distance[ultrasound - 1][next_wr[ultrasound-1]] = distance_in;
		next_wr[ultrasound-1]++;
		check_ultrasound(ultrasound);
	}
}

void check_ultrasound(uint8_t ultrasound)
{
	ultrasound = ultrasound -1;
    if((distance[ultrasound][0] == -1) || (distance[ultrasound][1] == -1) || (distance[ultrasound][2] == -1))
	{
		if((distance[ultrasound][0] == -1) && ((distance[ultrasound][1] != -1) || (distance[ultrasound][2] != -1)))distance_out[ultrasound] = (distance[ultrasound][1] + distance[ultrasound][2])/2;
		if((distance[ultrasound][1] == -1) && ((distance[ultrasound][0] != -1) || (distance[ultrasound][2] != -1)))distance_out[ultrasound] = (distance[ultrasound][0] + distance[ultrasound][2])/2;
		if((distance[ultrasound][2] == -1) && ((distance[ultrasound][1] != -1) || (distance[ultrasound][0] != -1)))distance_out[ultrasound] = (distance[ultrasound][0] + distance[ultrasound][1])/2;
	
		if(((distance[ultrasound][0] == -1) && (distance[ultrasound][1] == -1)) || ((distance[ultrasound][0] == -1) && (distance[ultrasound][2] == -1)) || ((distance[ultrasound][2] == -1) && (distance[ultrasound][1] == -1))) distance_out[ultrasound] = -1;
	}else
	{
	distance_out[ultrasound] = (distance[ultrasound][0] + distance[ultrasound][1] + distance[ultrasound][2])/3;
	/*sprintf(b, "%d", distance_out[ultrasound]);
	USART_puts(USART3, b);		
	USART_puts(USART3, "\n");	*/				
	}
}
