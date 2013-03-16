/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "main_init.h"
#include "delay.h"
#include "usart.h"
#include "pwm.h"
#include "motor.h"
#include "orientation.h"
#include "stm32f4xx_it.h"
#include "candle_position.h"
#include "stm32f4_discovery.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int delay;
int pulse_width = 0;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

int main(void)
{
  init_ALL();
  while (1)
  {
		/*
		if(STM_EVAL_PBGetState(BUTTON_USER))
		{
			delay = 0x3B7900;
		}
		else
		{
			delay = 0x1DBC80;
		}
			
		STM_EVAL_LEDOn(LED4);
		GPIO_SetBits(GPIOA, GPIO_Pin_15);
		Delay_tick(0x690);
		GPIO_ResetBits(GPIOA, GPIO_Pin_15);
		Delay_tick(delay);
		STM_EVAL_LEDOff(LED4);
		STM_EVAL_LEDOn(LED3);
		GPIO_SetBits(GPIOC, GPIO_Pin_11);
		Delay_tick(0x690);
		GPIO_ResetBits(GPIOC, GPIO_Pin_11);
		Delay_tick(delay);
		STM_EVAL_LEDOff(LED3);
		*//*
		pulse_width++;
		//move(left, forward, pulse_width);
		//move(right, forward, pulse_width);
    if (pulse_width > 1000)
    {
			blow();
      pulse_width = 0;
			STM_EVAL_LEDToggle(LED6);
			stop(left);
			stop(right);
			Delay(8000);
    }
    Delay_tick(1000000);
		*/
		
		if(candle_saw == 2)
		{
			if(candle_pos > RIGHT_CANDLE)
			{
				/*
				STM_EVAL_LEDOn(LED5);
				STM_EVAL_LEDOff(LED4);
				STM_EVAL_LEDOff(LED3);*/
				//USART_puts(USART2, "right");
				move(left, forward, 1000);
				move(right, backward, 1000);
			}
			else if(candle_pos < LEFT_CANDLE)
			{
				//USART_puts(USART2, "left");
				/*STM_EVAL_LEDOn(LED4);	
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED3);*/
				move(left, backward, 1000);
				move(right, forward, 1000);
			}
			else 
			{
				//	USART_puts(USART2, "center");
				/*STM_EVAL_LEDOn(LED3);
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED4);*/
				blow();
			}
		}else if(candle_saw == 1)
		{
			if(distance_out[0] < 30)
			{
				move(left, forward, 1000);
				move(right, backward, 1000);
			}else
			{
				move(left, forward, 1000);
				move(right, forward, 1000);
			}
		}else
		{
			
		}
	}
}




#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif
