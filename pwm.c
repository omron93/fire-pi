/* Includes ------------------------------------------------------------------*/
#include "pwm.h"
#include "main.h"
#include "main_init.h"
#include "delay.h"
#include "usart.h"
#include "candle_position.h"
#include "stm32f4_discovery.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void PWM_SetDC(uint16_t channel,uint16_t dutycycle)
{
	dutycycle = dutycycle*10;
  if (channel == 1)
  {
    TIM1->CCR1 = dutycycle;
  }
  else if (channel == 2)
  {
    TIM1->CCR2 = dutycycle;
  }
  else if (channel == 3)
  {
    TIM1->CCR3 = dutycycle;
  }
  else 
  {
    TIM1->CCR4 = dutycycle;
  }
}
void blow(void)
{
	blow_demo();
	PWM_SetDC(3,150);
	Delay(300);
	PWM_SetDC(3,200);
	Delay(200);
	PWM_SetDC(3,500);
	Delay(200);
	PWM_SetDC(3,700);
	Delay(400);
	PWM_SetDC(3,1000);
	Delay(300);
	PWM_SetDC(3,600);
	Delay(200);
	PWM_SetDC(3,1000);
	Delay(500);
	PWM_SetDC(3,0);
}
void blow_demo(void)
{
	PWM_SetDC(3,200);
	Delay(2000);
	PWM_SetDC(3,0);
}
