/* Includes ------------------------------------------------------------------*/
#include "motor.h"
#include "pwm.h"
#include "main.h"
#include "main_init.h"
#include "delay.h"
#include "usart.h"
#include "stm32f4xx_it.h"
#include "candle_position.h"
#include "programs.h"
#include "stm32f4_discovery.h"
#include <math.h>

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int pwm;
int logic1;
int logic2;
int start_left_enc;
int start_right_enc;

int block_left;
int block_left_pos;
int block_right;
int block_right_pos;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void move(int motor, int way, int torque)
{
	if(motor == left)
   {
		 block_left = coast;
     pwm = leftPWM;
     logic1 = logicleft1;
     logic2 = logicleft2;
		 GPIO_SetBits(GPIOE, left_LED);
		// GPIO_ResetBits(GPIOE, right_LED);
   }
   else if(motor == right)
   {
		 block_right = coast;
     pwm = rightPWM;
     logic1 = logicright1;
     logic2 = logicright2;
		 GPIO_SetBits(GPIOE, right_LED);
   }
   PWM_SetDC(pwm, torque);

   if(way == backward)
   {
		 GPIO_SetBits(GPIOE, logic2);
		 GPIO_ResetBits(GPIOE, logic1);
   }
   else if(way == forward)
   {
		 GPIO_SetBits(GPIOE, logic1);
		 GPIO_ResetBits(GPIOE, logic2);
   }
	 

}
void move_double(int way, int torque)
{
	move(left, way, torque);
	move(right, way, torque);
}
void stop(int motor, int style)
{
   if(motor == left)
   {
		 block_left = style;
		 block_left_pos = left_encoder;
     pwm = leftPWM;
     logic1 = logicleft1;
     logic2 = logicleft2;
		 GPIO_ResetBits(GPIOE, left_LED);
   }
   else if(motor == right)
   {
		 block_right = style;
		 block_right_pos = right_encoder;
     pwm = rightPWM;
     logic1 = logicright1;
     logic2 = logicright2;
		 GPIO_ResetBits(GPIOE, right_LED);
   }
	 if(style == coast)
	 {
		PWM_SetDC(pwm, 0);
	 }else
	 {
		PWM_SetDC(pwm, 1000);
	 }
	 GPIO_SetBits(GPIOE, logic1);
	 GPIO_SetBits(GPIOE, logic2);
}
void stop_robot(int style)
{
	stop(left,style);
	stop(right,style);
}
void move_unit_single(int motor, int way, int torque, int unit, int num)
{
	if(motor == left)
	{
		start_left_enc = left_encoder;
		if(unit == degree)
		{
			if(way == forward)
			{
				while(start_left_enc + num >= left_encoder)
				{
					move(left, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}else
			{
				while(start_left_enc - num <= left_encoder)
				{
					move(left, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}
		}else if(unit == length)
		{
			num = (180*num)/160;
			if(way == forward)
			{
				while(start_left_enc + num >= left_encoder)
				{
					move(left, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}else
			{
				while(start_left_enc - num <= left_encoder)
				{
					move(left, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}
		}
	}else
	{
		start_right_enc = right_encoder;
		if(unit == degree)
		{
			if(way == forward)
			{
				while(start_right_enc + num >= right_encoder)
				{
					move(right, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}else
			{
				while(start_right_enc - num <= right_encoder)
				{
					move(right, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}
		}else if(unit == length)
		{
			num = (180*num)/160;
			if(way == forward)
			{
				while(start_right_enc + num >= right_encoder)
				{
					move(right, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}else
			{
				while(start_right_enc - num <= right_encoder)
				{
					move(right, way, torque);
					//if(candle_saw == 1)candle_sawed();
				}
			}
		}
	}
}
void move_unit_double(int way, int torque, int unit, int num)
{
		start_left_enc = left_encoder;
		start_right_enc = right_encoder;
		if(unit == degree)
		{
			while((start_left_enc + num >= left_encoder)&&(start_right_enc + num >= right_encoder))
			{
				move(left, way, torque);
				move(right, way, torque);
			//	if(candle_saw == 1)candle_sawed();
			}
		}else if(unit == length)
		{
			num = (180*num)/160;
			if(way == forward)
			{
				while((start_left_enc + num >= left_encoder)&&(start_right_enc + num >= right_encoder))
				{
					move(left, way, torque);
					move(right, way, torque);
				//	if(candle_saw == 1)candle_sawed();
				}
			}else
			while((start_left_enc - num <= left_encoder)&&(start_right_enc - num <= right_encoder))
				{
					move(left, way, torque);
					move(right, way, torque);
				//	if(candle_saw == 1)candle_sawed();
				}
			
		}
}
void move_robot_degree(int degr, int torque) // degr = ((2*pi*15.5)/360)*uhel = 0.270526034 * uhel
{
	degr = 2.70526034f * degr;
	if(degr < 0)
	{
		degr = degr * -1;
		stop(left,block);
		move_unit_single(right, forward, torque, length, degr);
	}else if(degr > 0)
	{
		stop(right,block);
		move_unit_single(left, forward, torque, length, degr);
	}
}
