/* Includes ------------------------------------------------------------------*/
#include "main_init.h"
#include "main.h"
#include "pwm.h"
#include "motor.h"
#include <misc.h>	
#include <stm32f4xx_usart.h>
#include <stm32f4xx_tim.h>


/* Private typedef -----------------------------------------------------------*/
GPIO_InitTypeDef GPIO_InitStructure;
GPIO_InitTypeDef GPIO_InitStruct_USART2; // USART2 GPIO pins -> TX, RX
GPIO_InitTypeDef GPIO_InitStruct_USART3; // USART3 GPIO pins -> TX, RX
GPIO_InitTypeDef GPIO_InitStructure_Ultrasonic; //Ultrasonic pins
GPIO_InitTypeDef GPIO_InitStructure_EXTI; // configure EXTI GPIO
GPIO_InitTypeDef GPIO_InitStructure_PWM;
GPIO_InitTypeDef GPIO_InitStructure_Motor;
GPIO_InitTypeDef GPIO_InitStructure_ADC;
USART_InitTypeDef USART_InitStruct_USART2; // USART2 initilization
USART_InitTypeDef USART_InitStruct_USART3; // USART3 initilization
NVIC_InitTypeDef NVIC_InitStructure_USART2; // configure NVIC (nested vector interrupt controller)
NVIC_InitTypeDef NVIC_InitStructure_USART3; // configure NVIC (nested vector interrupt controller)
NVIC_InitTypeDef NVIC_InitStructure_EXTI;	// configure NVIC
EXTI_InitTypeDef EXTI_InitStructure; //configure External Interups
TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure_Ultrasonic;
TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure_PWM;
TIM_OCInitTypeDef TIM_OCInitStructure_PWM;
ADC_InitTypeDef       ADC_InitStructure;
ADC_CommonInitTypeDef ADC_CommonInitStructure;
DMA_InitTypeDef       DMA_InitStructure;


/* Private define ------------------------------------------------------------*/
#define ADC3_DR_ADDRESS    ((uint32_t)0x4001224C)
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
__IO uint32_t ADC3ConvertedVoltage[2];
uint16_t ADC3ConvertedValue[2];


/* Private function prototypes -----------------------------------------------*/
void init_ALL(void);
void init_discovery_board(void);
void init_SysTick(void);
void init_USART2(uint32_t baudrate);
void init_USART3(uint32_t baudrate);
void init_ultrasonic(void);
void init_ultrasonic_pins(void);
void init_ultrasonic_timer(void);
void init_exti(void);
void init_exti_GPIO(void);
void init_exti_line6(void);
void init_exti_line7(void);
void init_exti_line8(void);
void init_exti_line9(void);
void init_PWM(void);
void init_PWM_GPIO(void);
void init_PWM_Timer(int period);
void init_motor(void);
void init_motor_GPIO(void);
void init_motor_encoders_EXTI(void);
void init_ADC(void);


/* Private functions ---------------------------------------------------------*/
void init_ALL(void)
{
	init_discovery_board();
	init_SysTick();
	init_USART2(115200);
	init_USART3(115200);
	init_ultrasonic();
	init_PWM();
	init_motor();
	init_ADC();
}

void init_discovery_board(void)
{
	//init leds
  STM_EVAL_LEDInit(LED4);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED5);
  STM_EVAL_LEDInit(LED6);
	//turn on all leds
	STM_EVAL_LEDOn(LED4);
  STM_EVAL_LEDOn(LED3);
	STM_EVAL_LEDOn(LED5);
  STM_EVAL_LEDOn(LED6);
	//init button
	STM_EVAL_PBInit(BUTTON_USER, BUTTON_MODE_GPIO);
}

void init_SysTick(void)
{
	if (SysTick_Config(SystemCoreClock / 1000))
  { 
    /* Capture error */ 
    while (1);
  }
}

void init_USART2(uint32_t baudrate)
{
	/* enable APB2 peripheral clock for USART2 
	 * note that only USART2 and USART6 are connected to APB2
	 * the other USARTs are connected to APB1
	 */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	
	/* enable the peripheral clock for the pins used by 
	 * USART2, PB6 for TX and PB7 for RX
	 */
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	
	/* This sequence sets up the TX and RX pins 
	 * so they work correctly with the USART2 peripheral
	 */
	GPIO_InitStruct_USART2.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3; // Pins 2 (TX) and 3 (RX) are used
	GPIO_InitStruct_USART2.GPIO_Mode = GPIO_Mode_AF;			 // the pins are configured as alternate function so the USART peripheral has access to them
	GPIO_InitStruct_USART2.GPIO_Speed = GPIO_Speed_50MHz;		// this defines the IO speed and has nothing to do with the baudrate!
	GPIO_InitStruct_USART2.GPIO_OType = GPIO_OType_PP;			// this defines the output type as push pull mode (as opposed to open drain)
	GPIO_InitStruct_USART2.GPIO_PuPd = GPIO_PuPd_UP;			// this activates the pullup resistors on the IO pins
	GPIO_Init(GPIOA, &GPIO_InitStruct_USART2);					// now all the values are passed to the GPIO_Init() function which sets the GPIO registers
	
	/* The RX and TX pins are now connected to their AF
	 * so that the USART2 can take over control of the 
	 * pins
	 */
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource2, GPIO_AF_USART2); //
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource3, GPIO_AF_USART2);
	
	/* Now the USART_InitStruct is used to define the 
	 * properties of USART2 
	 */
	USART_InitStruct_USART3.USART_BaudRate = baudrate;				// the baudrate is set to the value we passed into this init function
	USART_InitStruct_USART3.USART_WordLength = USART_WordLength_8b;// we want the data frame size to be 8 bits (standard)
	USART_InitStruct_USART3.USART_StopBits = USART_StopBits_1;		// we want 1 stop bit (standard)
	USART_InitStruct_USART3.USART_Parity = USART_Parity_No;		// we don't want a parity bit (standard)
	USART_InitStruct_USART3.USART_HardwareFlowControl = USART_HardwareFlowControl_None; // we don't want flow control (standard)
	USART_InitStruct_USART3.USART_Mode = USART_Mode_Tx | USART_Mode_Rx; // we want to enable the transmitter and the receiver
	USART_Init(USART2, &USART_InitStruct_USART3);					// again all the properties are passed to the USART_Init function which takes care of all the bit setting
	
	
	/* Here the USART2 receive interrupt is enabled
	 * and the interrupt controller is configured 
	 * to jump to the USART2_IRQHandler() function
	 * if the USART2 receive interrupt occurs
	 */
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE); // enable the USART2 receive interrupt 
	
	NVIC_InitStructure_USART2.NVIC_IRQChannel = USART2_IRQn;		 // we want to configure the USART2 interrupts
	NVIC_InitStructure_USART2.NVIC_IRQChannelPreemptionPriority = 0;// this sets the priority group of the USART2 interrupts
	NVIC_InitStructure_USART2.NVIC_IRQChannelSubPriority = 0;		 // this sets the subpriority inside the group
	NVIC_InitStructure_USART2.NVIC_IRQChannelCmd = ENABLE;			 // the USART2 interrupts are globally enabled
	NVIC_Init(&NVIC_InitStructure_USART2);							 // the properties are passed to the NVIC_Init function which takes care of the low level stuff	

	// finally this enables the complete USART2 peripheral
	USART_Cmd(USART2, ENABLE);
}
void init_USART3(uint32_t baudrate)
{
/* enable APB2 peripheral clock for USART3 
	 * note that only USART3 and USART6 are connected to APB2
	 * the other USARTs are connected to APB1
	 */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	
	/* enable the peripheral clock for the pins used by 
	 * USART3, PB6 for TX and PB7 for RX
	 */
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	
	/* This sequence sets up the TX and RX pins 
	 * so they work correctly with the USART3 peripheral
	 */
	GPIO_InitStruct_USART3.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9; // Pins 6 (TX) and 7 (RX) are used
	GPIO_InitStruct_USART3.GPIO_Mode = GPIO_Mode_AF;			 // the pins are configured as alternate function so the USART peripheral has access to them
	GPIO_InitStruct_USART3.GPIO_Speed = GPIO_Speed_50MHz;		// this defines the IO speed and has nothing to do with the baudrate!
	GPIO_InitStruct_USART3.GPIO_OType = GPIO_OType_PP;			// this defines the output type as push pull mode (as opposed to open drain)
	GPIO_InitStruct_USART3.GPIO_PuPd = GPIO_PuPd_UP;			// this activates the pullup resistors on the IO pins
	GPIO_Init(GPIOD, &GPIO_InitStruct_USART3);					// now all the values are passed to the GPIO_Init() function which sets the GPIO registers
	
	/* The RX and TX pins are now connected to their AF
	 * so that the USART3 can take over control of the 
	 * pins
	 */
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_USART3); //
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_USART3);
	
	/* Now the USART_InitStruct is used to define the 
	 * properties of USART3 
	 */
	USART_InitStruct_USART3.USART_BaudRate = baudrate;				// the baudrate is set to the value we passed into this init function
	USART_InitStruct_USART3.USART_WordLength = USART_WordLength_8b;// we want the data frame size to be 8 bits (standard)
	USART_InitStruct_USART3.USART_StopBits = USART_StopBits_1;		// we want 1 stop bit (standard)
	USART_InitStruct_USART3.USART_Parity = USART_Parity_No;		// we don't want a parity bit (standard)
	USART_InitStruct_USART3.USART_HardwareFlowControl = USART_HardwareFlowControl_None; // we don't want flow control (standard)
	USART_InitStruct_USART3.USART_Mode = USART_Mode_Tx | USART_Mode_Rx; // we want to enable the transmitter and the receiver
	USART_Init(USART3, &USART_InitStruct_USART3);					// again all the properties are passed to the USART_Init function which takes care of all the bit setting
	
	
	/* Here the USART3 receive interrupt is enabled
	 * and the interrupt controller is configured 
	 * to jump to the USART3_IRQHandler() function
	 * if the USART3 receive interrupt occurs
	 */
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE); // enable the USART3 receive interrupt 
	
	NVIC_InitStructure_USART3.NVIC_IRQChannel = USART3_IRQn;		 // we want to configure the USART3 interrupts
	NVIC_InitStructure_USART3.NVIC_IRQChannelPreemptionPriority = 0;// this sets the priority group of the USART3 interrupts
	NVIC_InitStructure_USART3.NVIC_IRQChannelSubPriority = 0;		 // this sets the subpriority inside the group
	NVIC_InitStructure_USART3.NVIC_IRQChannelCmd = ENABLE;			 // the USART3 interrupts are globally enabled
	NVIC_Init(&NVIC_InitStructure_USART3);							 // the properties are passed to the NVIC_Init function which takes care of the low level stuff	

	// finally this enables the complete USART3 peripheral
	USART_Cmd(USART3, ENABLE);
}


void init_ultrasonic(void)
{
	init_ultrasonic_pins();
	init_ultrasonic_timer();
	init_exti();

}

void init_ultrasonic_pins(void)
{
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA|RCC_AHB1Periph_GPIOC|RCC_AHB1Periph_GPIOE, ENABLE);

  /* Configure PD12, PD13, PD14 and PD15 in output pushpull mode */
  GPIO_InitStructure_Ultrasonic.GPIO_Pin = GPIO_Pin_15;
  GPIO_InitStructure_Ultrasonic.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure_Ultrasonic.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure_Ultrasonic.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure_Ultrasonic.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOA, &GPIO_InitStructure_Ultrasonic);
	
	GPIO_InitStructure_Ultrasonic.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOC, &GPIO_InitStructure_Ultrasonic);
	
	GPIO_InitStructure_Ultrasonic.GPIO_Pin = GPIO_Pin_5;
	GPIO_Init(GPIOE, &GPIO_InitStructure_Ultrasonic);


}
void init_ultrasonic_timer(void)
{
	uint16_t PrescalerValue = 0;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	PrescalerValue = (uint16_t) ((SystemCoreClock /2) / 100000) - 1;

  /* Time base configuration */
  TIM_TimeBaseStructure_Ultrasonic.TIM_Period = 100000/2; //2x za vterinu se naplní celý citac(max:65534)(nastaven:50000)
  TIM_TimeBaseStructure_Ultrasonic.TIM_Prescaler = PrescalerValue;
  TIM_TimeBaseStructure_Ultrasonic.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure_Ultrasonic.TIM_CounterMode = TIM_CounterMode_Up;

  TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure_Ultrasonic);
	
	TIM_ARRPreloadConfig(TIM3, ENABLE);
  /* TIM3 enable counter */
  TIM_Cmd(TIM3, ENABLE);
}
void init_exti(void)
{
	init_exti_GPIO();
	init_exti_line6();
	init_exti_line7();
	init_exti_line8();
	init_exti_line9();
	EXTI_GenerateSWInterrupt(EXTI_Line6);
	EXTI_GenerateSWInterrupt(EXTI_Line7);
	EXTI_GenerateSWInterrupt(EXTI_Line8);
	EXTI_GenerateSWInterrupt(EXTI_Line9);
}
void init_exti_GPIO(void)
{
	/* Enable GPIOA clock */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
  /* Enable SYSCFG clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
  
  /* Configure PA0 pin as input floating */
  GPIO_InitStructure_EXTI.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure_EXTI.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_InitStructure_EXTI.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_InitStructure_EXTI.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9;
  GPIO_Init(GPIOC, &GPIO_InitStructure_EXTI);
}	
void init_exti_line6(void)
{
/* Connect EXTI Line0 to PA0 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource6);

  /* Configure EXTI Line0 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line6;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI Line0 Interrupt to the lowest priority */
  NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI9_5_IRQn;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelPreemptionPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelSubPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure_EXTI);
}
void init_exti_line7(void)
{
/* Connect EXTI Line7 to PA0 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource7);

  /* Configure EXTI Line0 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line7;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI Line7 Interrupt to the lowest priority */
  NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI9_5_IRQn;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelPreemptionPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelSubPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure_EXTI);


}

void init_exti_line8(void)
{
/* Connect EXTI Line0 to PA0 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource8);

  /* Configure EXTI Line0 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line8;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI Line0 Interrupt to the lowest priority */
  NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI9_5_IRQn;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelPreemptionPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelSubPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure_EXTI);
}
void init_exti_line9(void)
{
/* Connect EXTI Line0 to PA0 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource9);

  /* Configure EXTI Line0 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line9;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI Line0 Interrupt to the lowest priority */
  NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI9_5_IRQn;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelPreemptionPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelSubPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure_EXTI);
}
void init_PWM(void)
{
	init_PWM_GPIO();
	init_PWM_Timer(10000);
	PWM_SetDC(1,0);
  PWM_SetDC(2,0);
  PWM_SetDC(3,0);
}
void init_PWM_GPIO(void)
{
/* TIM3 clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);

  /* GPIOC and GPIOB clock enable */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);
  
  /* GPIOC Configuration: TIM3 CH1 (PC6) and TIM3 CH2 (PC7) */
  GPIO_InitStructure_PWM.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_11 | GPIO_Pin_13 ;
  GPIO_InitStructure_PWM.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure_PWM.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_InitStructure_PWM.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure_PWM.GPIO_PuPd = GPIO_PuPd_UP ;
  GPIO_Init(GPIOE, &GPIO_InitStructure_PWM); 

  /* Connect TIM3 pins to AF2 */  
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource9, GPIO_AF_TIM1);
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource11, GPIO_AF_TIM1); 
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource13, GPIO_AF_TIM1);



}
void init_PWM_Timer(int period)
{
	uint16_t PrescalerValue = 0;
  /* -----------------------------------------------------------------------
    TIM3 Configuration: generate 4 PWM signals with 4 different duty cycles.
    
    In this example TIM3 input clock (TIM3CLK) is set to 2 * APB1 clock (PCLK1), 
    since APB1 prescaler is different from 1.   
      TIM3CLK = 2 * PCLK1  
      PCLK1 = HCLK / 4 
      => TIM3CLK = HCLK / 2 = SystemCoreClock /2
          
    To get TIM3 counter clock at 28 MHz, the prescaler is computed as follows:
       Prescaler = (TIM3CLK / TIM3 counter clock) - 1
       Prescaler = ((SystemCoreClock /2) /28 MHz) - 1
                                              
    To get TIM3 output clock at 30 KHz, the period (ARR)) is computed as follows:
       ARR = (TIM3 counter clock / TIM3 output clock) - 1
           = 665

    Note: 
     SystemCoreClock variable holds HCLK frequency and is defined in system_stm32f4xx.c file.
     Each time the core clock (HCLK) changes, user had to call SystemCoreClockUpdate()
     function to update SystemCoreClock variable value. Otherwise, any configuration
     based on this variable will be incorrect.    
  ----------------------------------------------------------------------- */  

  /* Compute the prescaler value */
  PrescalerValue = (uint16_t) ((SystemCoreClock /2) / 1000000) - 1;

  /* Time base configuration */
  TIM_TimeBaseStructure_PWM.TIM_Period = period;
  TIM_TimeBaseStructure_PWM.TIM_Prescaler = PrescalerValue;
  TIM_TimeBaseStructure_PWM.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure_PWM.TIM_CounterMode = TIM_CounterMode_Up;

  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure_PWM);

  /* PWM1 Mode configuration: Channel1 */
  TIM_OCInitStructure_PWM.TIM_OCMode = TIM_OCMode_PWM1;
  TIM_OCInitStructure_PWM.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure_PWM.TIM_Pulse = 0;
  TIM_OCInitStructure_PWM.TIM_OCPolarity = TIM_OCPolarity_High;

  TIM_OC1Init(TIM1, &TIM_OCInitStructure_PWM);

  TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);

  /* PWM1 Mode configuration: Channel2 */
  TIM_OCInitStructure_PWM.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure_PWM.TIM_Pulse = 0;

  TIM_OC2Init(TIM1, &TIM_OCInitStructure_PWM);

  TIM_OC2PreloadConfig(TIM1, TIM_OCPreload_Enable);

  /* PWM1 Mode configuration: Channel3 */
  TIM_OCInitStructure_PWM.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure_PWM.TIM_Pulse = 0;

  TIM_OC3Init(TIM1, &TIM_OCInitStructure_PWM);

  TIM_OC3PreloadConfig(TIM1, TIM_OCPreload_Enable);


  TIM_ARRPreloadConfig(TIM1, ENABLE);

  /* TIM3 enable counter */
  TIM_Cmd(TIM1, ENABLE);
	
	TIM_CtrlPWMOutputs(TIM1, ENABLE);
}
void init_motor(void)
{
	init_motor_GPIO();
	init_motor_encoders_EXTI();
}
void init_motor_GPIO(void)
{
	  /* GPIOC and GPIOB clock enable */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);
  
  /* GPIOC Configuration: TIM3 CH1 (PC6) and TIM3 CH2 (PC7) */
  GPIO_InitStructure_Motor.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_6;
  GPIO_InitStructure_Motor.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure_Motor.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_InitStructure_Motor.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure_Motor.GPIO_PuPd = GPIO_PuPd_UP ;
  GPIO_Init(GPIOE, &GPIO_InitStructure_Motor);
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
	
	GPIO_InitStructure_Motor.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_2 | GPIO_Pin_4 | GPIO_Pin_6;
	GPIO_InitStructure_Motor.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure_Motor.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_InitStructure_Motor.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Init(GPIOD, &GPIO_InitStructure_Motor);
}

void init_motor_encoders_EXTI(void)
{
	/* Connect EXTI Line7 to PA0 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource0);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource4);

  /* Configure EXTI Line0 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line0 | EXTI_Line4;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;  
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI Line7 Interrupt to the lowest priority */
  NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI0_IRQn;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelPreemptionPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelSubPriority = 0x01;
  NVIC_InitStructure_EXTI.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure_EXTI);
	
	NVIC_InitStructure_EXTI.NVIC_IRQChannel = EXTI4_IRQn;
	NVIC_Init(&NVIC_InitStructure_EXTI);
	
	EXTI_GenerateSWInterrupt(EXTI_Line0);
	EXTI_GenerateSWInterrupt(EXTI_Line4);
}
void init_ADC(void)
{
	/* Enable ADC3, DMA2 and GPIO clocks ****************************************/
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA2 | RCC_AHB1Periph_GPIOC, ENABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3, ENABLE);
	
 
  /* DMA2 Stream0 channel0 configuration **************************************/
  DMA_InitStructure.DMA_Channel = DMA_Channel_2;  
  DMA_InitStructure.DMA_PeripheralBaseAddr = ((uint32_t)&ADC3->DR);
  DMA_InitStructure.DMA_Memory0BaseAddr = (uint32_t)&ADC3ConvertedValue[0];
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralToMemory;
  DMA_InitStructure.DMA_BufferSize = 2;
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_FIFOMode = DMA_FIFOMode_Disable;         
  DMA_InitStructure.DMA_FIFOThreshold = DMA_FIFOThreshold_HalfFull;
  DMA_InitStructure.DMA_MemoryBurst = DMA_MemoryBurst_Single;
  DMA_InitStructure.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
  DMA_Init(DMA2_Stream0, &DMA_InitStructure);
  DMA_Cmd(DMA2_Stream0, ENABLE);
 
 
  /* Configure ADC3 Channel12 pin as analog input ******************************/
  GPIO_InitStructure_ADC.GPIO_Pin = GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3;
  GPIO_InitStructure_ADC.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure_ADC.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOC, &GPIO_InitStructure_ADC);
	
	GPIO_InitStructure_ADC.GPIO_Pin = GPIO_Pin_1;
	GPIO_Init(GPIOA, &GPIO_InitStructure_ADC);
 
  /* ADC Common Init **********************************************************/
  ADC_CommonInitStructure.ADC_Mode = ADC_Mode_Independent ;
  ADC_CommonInitStructure.ADC_Prescaler = ADC_Prescaler_Div8;
  ADC_CommonInitStructure.ADC_DMAAccessMode = ADC_DMAAccessMode_Disabled;
  ADC_CommonInitStructure.ADC_TwoSamplingDelay = ADC_TwoSamplingDelay_5Cycles;
  ADC_CommonInit(&ADC_CommonInitStructure);
 
 
  /* ADC3 Init ****************************************************************/
  ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
  ADC_InitStructure.ADC_ScanConvMode = ENABLE;
  ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
  ADC_InitStructure.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
  ADC_InitStructure.ADC_ExternalTrigConv = 0;
  ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
  ADC_InitStructure.ADC_NbrOfConversion = 2;
  ADC_Init(ADC3, &ADC_InitStructure);
 
 
  /* ADC3 regular channel12 configuration *************************************/
  ADC_RegularChannelConfig(ADC3, ADC_Channel_11, 1, ADC_SampleTime_480Cycles  );
  ADC_RegularChannelConfig(ADC3, ADC_Channel_1, 2, ADC_SampleTime_480Cycles  );

 
 
  ADC_DMARequestAfterLastTransferCmd(ADC3, ENABLE);
 
 
  /* Enable ADC3 DMA */
  ADC_DMACmd(ADC3, ENABLE);
 
 
  /* Enable ADC3 */
  ADC_Cmd(ADC3, ENABLE);
 
 
  ADC_SoftwareStartConv(ADC3);
}
