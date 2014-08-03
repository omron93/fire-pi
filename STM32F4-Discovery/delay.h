/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
extern int dead;
extern int TimintDead;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void deadline(int time);
void deadline_Decrement(void);
void Delay(__IO uint32_t nTime);
void Delay_tick(__IO uint32_t nCount);
void TimingDelay_Decrement(void);
/* Exported variables ------------------------------------------------------- */
