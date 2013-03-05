/* Includes ------------------------------------------------------------------*/
#include "candle_position.h"
#include "usart.h"
#include <misc.h>	
#include <stm32f4xx.h>
#include <stm32f4_discovery.h>
#include <stdio.h>
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define LEFT 140
#define RIGHT 180
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
char a[50];
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void candle_position(int x, int z)
{
if(x > RIGHT)
	{
		
		STM_EVAL_LEDOn(LED5);
		STM_EVAL_LEDOff(LED4);
		STM_EVAL_LEDOff(LED3);
		USART_puts(USART2, "right");
	}
	else if(x < LEFT)
	{
		USART_puts(USART2, "left");
		STM_EVAL_LEDOn(LED4);	
		STM_EVAL_LEDOff(LED5);
		STM_EVAL_LEDOff(LED3);
	}
	else 
	{
			USART_puts(USART2, "center");
		STM_EVAL_LEDOn(LED3);
		STM_EVAL_LEDOff(LED5);
		STM_EVAL_LEDOff(LED4);
	}
/*
	USART_puts(USART2, " >> rx: ");
	sprintf(a, "%d", x);
	USART_puts(USART2,  a);
	USART_puts(USART2, " - ");
	sprintf(a, "%d", z);
	USART_puts(USART2,  a);
	USART_puts(USART2, " \n");
	*/
}

