/* Includes ------------------------------------------------------------------*/
#include "delay.h"
#include "main.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
static __IO uint32_t TimingDelay;
int TimintDead = 0;
int dead = 0;
/* Private function prototypes -----------------------------------------------*/
void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);

/* Private functions ---------------------------------------------------------*/
void deadline(int time)
{
	TimintDead = time;
	dead = 1;
}
void deadline_Decrement(void)
{
	if (TimintDead != 0x00)
  { 
    TimintDead--;
  }else
	{
		dead = 0;
	}
}
void Delay(__IO uint32_t nTime)
{ 
  TimingDelay = nTime;

  while(TimingDelay != 0);
}


void Delay_tick(__IO uint32_t nCount)
{
 while(nCount--)
  {
  }
}

void TimingDelay_Decrement(void)
{
  if (TimingDelay != 0x00)
  { 
    TimingDelay--;
  }
}
