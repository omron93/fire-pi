#Path to gcc binaries
NEWPATH=/home/mas/Projekt/arm-2012.09/bin

#Source files dir
SRCSDIR=kit/src
INCDIR=kit/inc
GUIDIR=gui

#Source files
SRCS = $(SRCSDIR)/main.c $(SRCSDIR)/system_stm32f0xx.c $(SRCSDIR)/main_it.c

# all the files will be generated with this name (main.elf, main.bin, main.hex, etc)
PROJ_NAME=kit/main

# Location of the Libraries folder from the STM32F0xx Standard Peripheral Library
STD_PERIPH_LIB=Libraries

# Location of the linker scripts
LDSCRIPT_INC=extra/ldscripts

# location of OpenOCD Board .cfg files (only used with 'make program')
OPENOCD_BOARD_DIR=/usr/share/openocd/scripts/board

# Configuration (cfg) file containing programming directives for OpenOCD
OPENOCD_PROC_FILE=extra/stm32f0-openocd.cfg

###################################################

CC=$(NEWPATH)/arm-none-eabi-gcc
OBJCOPY=$(NEWPATH)/arm-none-eabi-objcopy
OBJDUMP=$(NEWPATH)/arm-none-eabi-objdump
SIZE=$(NEWPATH)/arm-none-eabi-size

CFLAGS  = -Wall -g -std=c99 -Os
#CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m0 -march=armv6s-m
CFLAGS += -mlittle-endian -mcpu=cortex-m0  -march=armv6-m -mthumb
CFLAGS += -ffunction-sections -fdata-sections
CFLAGS += -Wl,--gc-sections -Wl,-Map=$(PROJ_NAME).map

###################################################

vpath %.c src
vpath %.a $(STD_PERIPH_LIB)

ROOT=$(shell pwd)

CFLAGS += -I inc -I $(STD_PERIPH_LIB) -I $(STD_PERIPH_LIB)/CMSIS/Device/ST/STM32F0xx/Include
CFLAGS += -I $(STD_PERIPH_LIB)/CMSIS/Include -I $(STD_PERIPH_LIB)/STM32F0xx_StdPeriph_Driver/inc
CFLAGS += -include $(STD_PERIPH_LIB)/stm32f0xx_conf.h
CFLAGS += -I $(INCDIR)

SRCS += extra/startup_stm32f0xx.s # add startup file to build

# need if you want to build with -DUSE_CMSIS
#SRCS += stm32f0_discovery.c
#SRCS += stm32f0_discovery.c stm32f0xx_it.c

OBJS = $(SRCS:.c=.o)

###################################################

.PHONY: lib proj

all: lib proj

tempgui: $(GUIDIR)/main.cpp $(GUIDIR)/gui.glade
	gcc -o $(GUIDIR)/tempgui $(GUIDIR)/main.cpp `pkg-config gtkmm-3.0 --cflags --libs` -I $(INCDIR)

lib:
	PATH=$(PATH):$(NEWPATH) $(MAKE) -C $(STD_PERIPH_LIB)

proj: 	$(PROJ_NAME).elf

$(PROJ_NAME).elf: $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@ -L$(STD_PERIPH_LIB) -lstm32f0 -L$(LDSCRIPT_INC) -Tstm32f0.ld
	$(OBJCOPY) -O ihex $(PROJ_NAME).elf $(PROJ_NAME).hex
	$(OBJCOPY) -O binary $(PROJ_NAME).elf $(PROJ_NAME).bin
	$(OBJDUMP) -St $(PROJ_NAME).elf >$(PROJ_NAME).lst
	$(SIZE) $(PROJ_NAME).elf

program: $(PROJ_NAME).bin
	openocd -f $(OPENOCD_BOARD_DIR)/stm32f0discovery.cfg -f $(OPENOCD_PROC_FILE) -c "stm_flash `pwd`/$(PROJ_NAME).bin" -c shutdown

debug: $(PROJ_NAME).elf
	PATH=$(PATH):$(NEWPATH)	extra/debug_nemiver.sh

clean:
	find . \( -name "*.orig" -or -name "*~" \) -exec rm -v "{}" \;
	rm -f *.o
	rm -f $(PROJ_NAME).elf
	rm -f $(PROJ_NAME).hex
	rm -f $(PROJ_NAME).bin
	rm -f $(PROJ_NAME).map
	rm -f $(PROJ_NAME).lst
	rm -f $(GUIDIR)/main
	rm -f $(GUIDIR)/*o

realclean: clean
	$(MAKE) -C $(STD_PERIPH_LIB) clean
