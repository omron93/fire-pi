/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
extern uint16_t ADC3ConvertedValue[2];
extern __IO uint32_t ADC3ConvertedVoltage[2];
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void init_ALL(void);
void init_discovery_board(void);
void init_SysTick(void);
/* Exported variables ------------------------------------------------------- */
