/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
#define LEFT_CANDLE 100
#define RIGHT_CANDLE 220
extern int candle_pos;
extern int candle_saw;

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void candle_position(int x, int z);
/* Exported variables ------------------------------------------------------- */
