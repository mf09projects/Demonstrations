PROJECT := example
C_FILES := main.c app.c test.c

FILE_EXT :=elf

SRC_DIR := .
BUILD_DIR := build

C_SEGGER :=SEGGER/SEGGER/SEGGER_RTT.c SEGGER/SEGGER/SEGGER_RTT_printf.c
INCL_SEGGER :=-ISEGGER/SEGGER -ISEGGER/Config

$(info BUILD TOOL_CHAIN = arm-none-eabi)
include makefile.conf
STARTUP_DEFS=-D__STARTUP_CLEAR_BSS -D__START=_mainCRTStartup -D__NO_SYSTEM_INIT
LDSCRIPTS=-L$(ARM_BASE)/ldscripts -T gcc.ld
LFLAGS=$(USE_NANO) $(USE_SEMIHOST) $(LDSCRIPTS) $(MAP)

CC               :=$(TOOLCHAIN_PREFIX)gcc
CFLAGS_COVERAGE  := -g --coverage -fprofile-info-section 
CFLAGS           :=$(ARM_CFLAGS) -I. $(INCL_SEGGER)
CFLAGS			 +=$(CFLAGS_COVERAGE)
LDFLAGS          :=$(LFLAGS)
DEFS = 

$(shell mkdir -p $(BUILD_DIR)/SEGGER/SEGGER)

OBJ_FILES  := $(patsubst %.c,$(BUILD_DIR)/%.o,$(C_FILES))
OBJ_FILES  += $(patsubst %.c,$(BUILD_DIR)/%.o,$(C_SEGGER))

#.phony: all
all: $(BUILD_DIR) $(PROJECT).$(FILE_EXT)

$(BUILD_DIR):
	$(info Create dir: $@)
	mkdir -p $@

$(BUILD_DIR)/SEGGER/SEGGER:
	$(info Create dir: $@)
	mkdir -p $@
	
$(BUILD_DIR)/%.s.o: $(STARTUP_FILE_PATH)/%.S
	$(info Compile $@ from $<)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(info Compile $@ from $<)
	$(CC) $(CFLAGS) -c -o $@ $<
	
%.$(FILE_EXT): $(ARM_STARTUP) $(OBJ_FILES)
	$(info Linker - generate $@ from $^)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

.phony: clean
clean:
	rm -rf *.$(FILE_EXT) $(BUILD_DIR)