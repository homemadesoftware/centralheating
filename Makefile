# Central Heating Control System - Makefile
# Target: Atmel AT89C51ED2 (8051 microcontroller)

# Compiler and tools
CC = sdcc
PACKIHX = packihx

# Compiler flags
CFLAGS = --model-large -DMC8051 -I$(COMMON_DIR) -I$(CORE_DIR)
LDFLAGS = --model-large

# Directories
CORE_DIR = CentralHeatingCore
COMMON_DIR = Common
EEPROM_DIR = EepromAccess

# Source files
CORE_SOURCES = $(wildcard $(CORE_DIR)/*.c)
COMMON_SOURCES = $(wildcard $(COMMON_DIR)/*.c)
FIRMWARE_SOURCES = $(CORE_SOURCES) $(COMMON_SOURCES)

EEPROM_SOURCES = $(wildcard $(EEPROM_DIR)/*.c)

# Object files (.rel files in SDCC)
CORE_OBJECTS = $(CORE_SOURCES:.c=.rel)
COMMON_OBJECTS = $(COMMON_SOURCES:.c=.rel)
FIRMWARE_OBJECTS = $(CORE_OBJECTS) $(COMMON_OBJECTS)

EEPROM_OBJECTS = $(EEPROM_SOURCES:.c=.rel)

# Output files
FIRMWARE_TARGET = $(CORE_DIR)/89C51Board
FIRMWARE_HEX = $(FIRMWARE_TARGET).hex
FIRMWARE_IHX = $(FIRMWARE_TARGET).ihx

EEPROM_TARGET = $(EEPROM_DIR)/EepromAccess
EEPROM_HEX = $(EEPROM_TARGET).hex
EEPROM_IHX = $(EEPROM_TARGET).ihx

# Default target
.PHONY: all
all: firmware

# Build main firmware
.PHONY: firmware
firmware: $(FIRMWARE_HEX)

# Build EEPROM utility
.PHONY: eeprom
eeprom: $(EEPROM_HEX)

# Compile C files to relocatable objects
%.rel: %.c
	@echo "Compiling $<..."
	@$(CC) -c $(CFLAGS) -o $@ $<

# Link and convert firmware to HEX
$(FIRMWARE_HEX): $(FIRMWARE_OBJECTS)
	@echo "Linking firmware..."
	@$(CC) $(LDFLAGS) -o $(FIRMWARE_IHX) $(FIRMWARE_OBJECTS)
	@echo "Converting to Intel HEX format..."
	@$(PACKIHX) $(FIRMWARE_IHX) > $(FIRMWARE_HEX)
	@echo "Build complete: $(FIRMWARE_HEX)"

# Link and convert EEPROM utility to HEX
$(EEPROM_HEX): $(EEPROM_OBJECTS)
	@echo "Linking EEPROM utility..."
	@$(CC) $(LDFLAGS) -o $(EEPROM_IHX) $(EEPROM_OBJECTS)
	@echo "Converting to Intel HEX format..."
	@$(PACKIHX) $(EEPROM_IHX) > $(EEPROM_HEX)
	@echo "Build complete: $(EEPROM_HEX)"

# Clean build artifacts
.PHONY: clean
clean:
	@echo "Cleaning build artifacts..."
	@rm -f $(CORE_DIR)/*.rel $(CORE_DIR)/*.rst $(CORE_DIR)/*.lst $(CORE_DIR)/*.sym
	@rm -f $(CORE_DIR)/*.asm $(CORE_DIR)/*.mem $(CORE_DIR)/*.map $(CORE_DIR)/*.lk
	@rm -f $(COMMON_DIR)/*.rel $(COMMON_DIR)/*.rst $(COMMON_DIR)/*.lst $(COMMON_DIR)/*.sym
	@rm -f $(COMMON_DIR)/*.asm $(COMMON_DIR)/*.mem
	@rm -f $(EEPROM_DIR)/*.rel $(EEPROM_DIR)/*.rst $(EEPROM_DIR)/*.lst $(EEPROM_DIR)/*.sym
	@rm -f $(EEPROM_DIR)/*.asm $(EEPROM_DIR)/*.mem $(EEPROM_DIR)/*.map $(EEPROM_DIR)/*.lk
	@rm -f $(FIRMWARE_IHX) $(FIRMWARE_HEX)
	@rm -f $(EEPROM_IHX) $(EEPROM_HEX)
	@echo "Clean complete."

# Clean and rebuild
.PHONY: rebuild
rebuild: clean all

# Flash firmware to microcontroller (placeholder - configure for your programmer)
.PHONY: flash
flash: $(FIRMWARE_HEX)
	@echo "Flashing firmware to AT89C51ED2..."
	@echo "ERROR: Flash target not configured."
	@echo "Please configure your programmer (Atmel Flip, avrdude, minipro, etc.)"
	@false
	# Example for minipro:
	# minipro -p AT89C51ED2 -w $(FIRMWARE_HEX)

# Display build information
.PHONY: info
info:
	@echo "Central Heating Control System - Build Information"
	@echo "=================================================="
	@echo "Compiler:        $(CC)"
	@echo "Compiler flags:  $(CFLAGS)"
	@echo "Linker flags:    $(LDFLAGS)"
	@echo ""
	@echo "Firmware sources: $(words $(FIRMWARE_SOURCES)) files"
	@echo "  Core:   $(CORE_SOURCES)"
	@echo "  Common: $(COMMON_SOURCES)"
	@echo ""
	@echo "EEPROM sources: $(words $(EEPROM_SOURCES)) files"
	@echo "  $(EEPROM_SOURCES)"
	@echo ""
	@echo "Output files:"
	@echo "  Firmware: $(FIRMWARE_HEX)"
	@echo "  EEPROM:   $(EEPROM_HEX)"

# Help
.PHONY: help
help:
	@echo "Central Heating Control System - Makefile Help"
	@echo "=============================================="
	@echo ""
	@echo "Targets:"
	@echo "  make              - Build main firmware (default)"
	@echo "  make firmware     - Build main 8051 firmware"
	@echo "  make eeprom       - Build EEPROM utility"
	@echo "  make all          - Build main firmware"
	@echo "  make clean        - Remove all build artifacts"
	@echo "  make rebuild      - Clean and rebuild"
	@echo "  make flash        - Flash firmware to microcontroller"
	@echo "  make info         - Display build information"
	@echo "  make help         - Show this help message"
	@echo ""
	@echo "Output files:"
	@echo "  $(FIRMWARE_HEX) - Main firmware (Intel HEX)"
	@echo "  $(EEPROM_HEX)   - EEPROM utility (Intel HEX)"
