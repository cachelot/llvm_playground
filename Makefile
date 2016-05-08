# Makefile that generates LLVM IR listings with a several optimization levels
all: build
.PHONY: all

C_FILES := $(wildcard *.c)

# macro with optimization level as argument
# it expands into rule that generates LLVM IR listing (filename-OX.ll)
# also it makes dirty demangling with sed
# arg1: optimization_level
#		in a form of copmiler flag 'O1', 'O2', ...
define _clang_emit_llvm
%-$(1).ll: %.c
	clang -cc1 -emit-llvm -$(1) $$< -o $$@
endef

$(eval $(call _clang_emit_llvm,O0))
$(eval $(call _clang_emit_llvm,O1))
$(eval $(call _clang_emit_llvm,O2))
$(eval $(call _clang_emit_llvm,O3))

# expand each .c files to a targets for each optimization level
LL_FILES += $(patsubst %.c,%-O0.ll, $(C_FILES))
LL_FILES += $(patsubst %.c,%-O1.ll, $(C_FILES))
LL_FILES += $(patsubst %.c,%-O2.ll, $(C_FILES))
LL_FILES += $(patsubst %.c,%-O3.ll, $(C_FILES))

build: $(LL_FILES)

clean:
	rm -f $(LL_FILES)
	rm -f *.bak

