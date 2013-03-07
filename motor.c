/* Includes ------------------------------------------------------------------*/
#include "motor.h"
#include "pwm.h"
#include "main.h"
#include "main_init.h"
#include "delay.h"
#include "usart.h"
#include "stm32f4xx_it.h"
#include "candle_position.h"
#include "stm32f4_discovery.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int pwm;
int logic1;
int logic2;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void move(int motor, int way, int torque)
{
	if(motor == left)
   {
     pwm = leftPWM;
     logic1 = logicleft1;
     logic2 = logicleft2;
		 GPIO_SetBits(GPIOE, left_LED);
		// GPIO_ResetBits(GPIOE, right_LED);
   }
   else if(motor == right)
   {
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

void stop(int motor)
{
   if(motor == left)
   {
     pwm = leftPWM;
     logic1 = logicleft1;
     logic2 = logicleft2;
		 GPIO_ResetBits(GPIOE, left_LED);
   }
   else if(motor == right)
   {
     pwm = rightPWM;
     logic1 = logicright1;
     logic2 = logicright2;
		 GPIO_ResetBits(GPIOE, right_LED);
   }
   PWM_SetDC(pwm, 1000);
	 GPIO_SetBits(GPIOE, logic1);
	 GPIO_SetBits(GPIOE, logic2);
}
