struct digital_pin_bitband_and_config_table_struct { // not really bitband, old name from Teensy3
	volatile uint32_t *reg;
	volatile uint32_t *mux;
	volatile uint32_t *pad;
	uint32_t mask;
};

extern const struct digital_pin_bitband_and_config_table_struct digital_pin_to_info_PGM[];

#define digitalPinToPort(pin)    (pin)
#define digitalPinToBitMask(pin) (digital_pin_to_info_PGM[(pin)].mask)
#define portOutputRegister(pin)  ((digital_pin_to_info_PGM[(pin)].reg + 0))
#define portSetRegister(pin)     ((digital_pin_to_info_PGM[(pin)].reg + 33))
#define portClearRegister(pin)   ((digital_pin_to_info_PGM[(pin)].reg + 34))
#define portToggleRegister(pin)  ((digital_pin_to_info_PGM[(pin)].reg + 35))
#define portInputRegister(pin)   ((digital_pin_to_info_PGM[(pin)].reg + 2))
#define portModeRegister(pin)    ((digital_pin_to_info_PGM[(pin)].reg + 1))
#define portConfigRegister(pin)  ((digital_pin_to_info_PGM[(pin)].mux))
#define portControlRegister(pin) ((digital_pin_to_info_PGM[(pin)].pad))
#define digitalPinToPortReg(pin) (portOutputRegister(pin))
#define digitalPinToBit(pin)     (__builtin_ctz(digitalPinToBitMask(pin)))
