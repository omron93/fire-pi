/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "delay.h"
#include "motor.h"
#include "orientation.h"
#include "pwm.h"
#include "candle_position.h"
#include "stm32f4_discovery.h"


/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void chaos_candle_find(void)
{
		if(candle_saw == 1)
		{
			if(candle_pos > RIGHT_CANDLE)
			{
				stop(left,coast);
				stop(right,coast);
				Delay(300);
				/*
				STM_EVAL_LEDOn(LED5);
				STM_EVAL_LEDOff(LED4);
				STM_EVAL_LEDOff(LED3);*/
				//USART_puts(USART2, "right");
				move(left, backward, 600);
				move(right, forward, 600);				
				
			}
			else if(candle_pos < LEFT_CANDLE)
			{
				stop(left,coast);
				stop(right,coast);
				Delay(300);
				//USART_puts(USART2, "left");
				/*STM_EVAL_LEDOn(LED4);	
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED3);*/
				move(left, forward, 600);
				move(right, backward, 600);
			}
			else 
			{
				//	USART_puts(USART2, "center");
				/*STM_EVAL_LEDOn(LED3);
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED4);*/
				stop(left,coast);
				stop(right,coast);
				Delay(500);
				blow();
			}
		}
		else if(candle_saw == 0)
		{
			if((distance_out[center_ultra] < 30)||(distance_out[left_ultra] < 30)||(distance_out[right_ultra] < 30))
			{
				/*if(distance_out[right_ultra] < 30)
				{
					//move(left, forward, 800);
					move(right, backward, 800);
				}else if(distance_out[left_ultra] < 30)
				{
					move(left, backward, 800);
					//move(right, forward, 800);
				}	else
				{*/
					move(left, backward, 800);
					move(right, forward, 800);
				//}	
			}else
			{
				move(left, forward, 800);
				move(right, forward, 800);
			}
			
		}
		else
		{
			

		}

}

void loop_wall(void)
{
	if(distance_out[left_ultra] < 25)
	{
		while(distance_out[left_ultra] < 25)
		{
			move(left, forward, 800);
			move(right, forward, 800);
		}
	}
	else
	{
		move_unit_double(forward, 800, length, 5);
		move_robot_degree(-90, 800);
		move_unit_double(forward, 800, length, 25);
		move_robot_degree(-90, 800);
	}
}
void homologation(void)´
{
		if(candle_saw == 1)
		{
			if(candle_pos > RIGHT_CANDLE)
			{
				stop(left,coast);
				stop(right,coast);
				Delay(300);
				//USART_puts(USART2, "right");
				move(left, backward, 600);
				move(right, forward, 600);				
				
			}
			else if(candle_pos < LEFT_CANDLE)
			{
				stop(left,coast);
				stop(right,coast);
				Delay(300);
				//USART_puts(USART2, "left");
				move(left, forward, 600);
				move(right, backward, 600);
			}
			else 
			{
				//	USART_puts(USART2, "center");
				stop(left,coast);
				stop(right,coast);
				Delay(500);
				blow();
			}
		}
		else if(candle_saw == 20)
		{
			move_unit_double(forward, 800, length, 50);
			move_robot_degree(-20, 500);
			move_robot_degree(40, 500);
			move_robot_degree(-20, 500);
		}
	




}