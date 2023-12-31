

#include <stdint.h>

extern volatile uint32_t systick_millis_count;
extern volatile uint32_t systick_cycle_count;
extern volatile uint32_t systick_safe_read;

// from pgmspace.h

#define DMAMEM __attribute__ ((section(".dmabuffers"), used))
#define FASTRUN __attribute__ ((section(".fastrun") ))
#define PROGMEM __attribute__((section(".progmem")))
#define FLASHMEM __attribute__((section(".flashmem")))
#define EXTMEM __attribute__((section(".externalram")))


#include <pins.h>
#include <imxrt.h>
#include <core_pins.h>
#include <arm_math.h>
#include <core_cmInstr.h>

