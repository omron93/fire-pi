/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "main_init.h"
#include "programs.h"
#include "motor.h"
#include "delay.h"
#include "pwm.h"
#include "stm32f4_discovery.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

int main(void)
{	
	init_ALL();
	menu();
  while (1)
  {
		switch(program)
		{
			case 1:
				chaos();
			break;
			case 2:
				homologation();
			break;
			case 3:
				wall_detect();				
			break;
			case 4:
				follow_line();
			break;
			case 5:
				move_double(forward, 1000);		
			break;
			case 6:
				blow_demo();
				Delay(8000);
				blow();
				Delay(8000);
			break;
		}
		//chaos_simple();
		//loop_wall();
		//homologation();
		//stop_on_line();
		//follow_line();
		//move_double(forward, 1000);
		//go_to_center();
		//chaos();
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
