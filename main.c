/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "main_init.h"
#include "programs.h"
#include "motor.h"
#include "delay.h"
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
	Delay(800);
  while (1)
  {
		//chaos_simple();
		//loop_wall();
		//homologation();
		//stop_on_line();
		//follow_line();
		//move_double(forward, 1000);
		//go_to_center();
		chaos();
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
