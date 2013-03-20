/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "orientation.h"
#include "delay.h"
#include "usart.h"
#include "main_init.h"
#include "stm32f4_discovery.h"
#include <stdio.h>

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define left 0
#define left_voltage 1800
#define right 1
#define right_voltage 1800
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int distance[4][3];
int distance_out[4];
int next_wr[4];
char b[50];
int ultra_pause = 20;
int ADC_pause = 2;
int ultra_last_read = 4;
int ii;

int left_white;
int right_white;
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
	
		if(((distance[ultrasound][0] == -1) && (distance[ultrasound][1] == -1)) || ((distance[ultrasound][0] == -1) && (distance[ultrasound][2] == -1)) || ((distance[ultrasound][2] == -1) && (distance[ultrasound][1] == -1))) distance_out[ultrasound] = 1000;
	}else
	{
	distance_out[ultrasound] = (distance[ultrasound][0] + distance[ultrasound][1] + distance[ultrasound][2])/3;
	/*sprintf(b, "%d", distance_out[ultrasound]);
	USART_puts(USART3, b);		
	USART_puts(USART3, "\n");	*/				
	}
}

void read_ultrasound_check(void)
{
  if (ultra_pause != 0x00)
  { 
    ultra_pause--;
  }else
	{
		switch(ultra_last_read)
		{
		case 4:
			GPIO_SetBits(GPIOE, GPIO_Pin_5);
			Delay_tick(0x690);
			GPIO_ResetBits(GPIOE, GPIO_Pin_5);
			ultra_last_read = 1;
		break;
		case 1:
			GPIO_SetBits(GPIOA, GPIO_Pin_15);
			Delay_tick(0x690);
			GPIO_ResetBits(GPIOA, GPIO_Pin_15);
			ultra_last_read = 2;
		break;
		case 2:
			GPIO_SetBits(GPIOC, GPIO_Pin_11);
			Delay_tick(0x690);
			GPIO_ResetBits(GPIOC, GPIO_Pin_11);
			ultra_last_read = 3;
		break;
		case 3:
			/*
			GPIO_SetBits(GPIOA, GPIO_Pin_15);
			Delay_tick(0x690);
			GPIO_ResetBits(GPIOA, GPIO_Pin_15);
			*/
			ultra_last_read = 4;
		break;
		}

		ultra_pause = 20;
	}
}
void read_ADC_check(void)
{
	if (ADC_pause != 0x00)
  { 
    ADC_pause--;
  }else
	{
		for (ii = 0; ii <= 1; ii++)
		ADC3ConvertedVoltage[ii] = ADC3ConvertedValue[ii] *3300/0xFFF;
		ADC_pause = 2;
		if(ADC3ConvertedVoltage[left] < left_voltage)
		{
			left_white = 1;
			STM_EVAL_LEDOn(LED3);
			//STM_EVAL_LEDOn(LED3);
		}else
		{
			left_white = 0;
			STM_EVAL_LEDOff(LED3);
			//STM_EVAL_LEDOff(LED3);
		}
		if(ADC3ConvertedVoltage[right] < right_voltage)
		{
			right_white = 1;
			STM_EVAL_LEDOn(LED3);
			//STM_EVAL_LEDOn(LED5);
		}else
		{
			right_white = 0;
			STM_EVAL_LEDOff(LED3);
			//STM_EVAL_LEDOff(LED5);
		}
	}
}
