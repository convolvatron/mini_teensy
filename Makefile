TOOLS = /Users/ziggy/teensy_4.1_arm

CORTEX_M=7

USE_NOHOST=--specs=nosys.specs
CC=$(TOOLS)/bin/arm-none-eabi-gcc
ARCH_FLAGS=-mthumb -mcpu=cortex-m$(CORTEX_M)

NAME=blink
STARTUP_DEFS=-D__STARTUP_CLEAR_BSS -D__START=main
# -Os  -flto -ffunction-sections -fdata-sections
CFLAGS=$(ARCH_FLAGS) $(STARTUP_DEFS)  -I. -DARDUINO_TEENSY41
GC=-Wl,--gc-sections
MAP=-Wl,-Map=$(NAME).map

STARTUP = startup_ARMCM7.S
LDSCRIPTS=-L. -T imxrt1062_t41.ld
LFLAGS=$(USE_NANO) $(USE_NOHOST) $(LDSCRIPTS) $(GC) $(MAP) -nostdlib

SOURCES = $(NAME).c digital.c delay.c bootdata.c startup.c
$(NAME).axf: $(SOURCES) $(STARTUP)
	$(CC) $^ $(CFLAGS) $(LFLAGS) -o $@

blink.hex: blink.axf
	$(TOOLS)/bin/arm-none-eabi-objcopy  -R .eeprom -R .fuse -R .lock -R .signature -O ihex blink.axf blink.hex

load: blink.hex
	../teensy_loader_cli/teensy_loader_cli -w --mcu=TEENSY41 blink.hex

blink.d: blink.axf
	$(TOOLS)/bin/arm-none-eabi-objdump -d  blink.axf > blink.d

clean: 
	rm -f $(NAME)*.axf *.map *.o *.hex

