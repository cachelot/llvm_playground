#
#  (C) Copyright 2015 Iurii Krasnoshchok
#
#  Distributed under the terms of Simplified BSD License
#  see LICENSE file

# Makefile that generates LLVM IR listings with a several optimization levels
# How to use:
# - Put any valid C/C++ file with extension .c or .cpp correspondingly
# - Run: make
# - There will be bunch of llvm listings for each optimization level

all: build
.PHONY: all clean

OPTIMIZATION_LEVELS := O0 O1 O2 O3 Os

# macro with optimization level as argument
# it expands into rule that generates LLVM IR listing (filename-OX.ll)
# also it makes dirty demangling with sed
# arg1: optimization_level
#		in a form of copmiler flag 'O1', 'O2', ...
# arg2: file extension (c or cpp)
# arg3: compiler frontend (clang or clang++)
define _clang_emit_llvm
%-$(1).ll: %.$(2)
	$(3) -S -emit-llvm -$(1) $$< -o $$@

endef

# Generate build rules for each optimization levels
$(foreach level,$(OPTIMIZATION_LEVELS), \
	$(eval $(call _clang_emit_llvm,$(level),c,clang -std=c11)))
$(foreach level,$(OPTIMIZATION_LEVELS), \
	$(eval $(call _clang_emit_llvm,$(level),cpp,clang++ -std=c++11)))

# Generate actual targets, like 'example-O2.ll'
C_FILES := $(wildcard *.c)
CPP_FILES := $(wildcard *.cpp)
TARGET_LLVM += $(foreach level,$(OPTIMIZATION_LEVELS),$(patsubst %.c,%-$(level).ll, $(C_FILES)))
TARGET_LLVM += $(foreach level,$(OPTIMIZATION_LEVELS),$(patsubst %.cpp,%-$(level).ll, $(CPP_FILES)))

build: $(TARGET_LLVM)

clean:
	rm -f $(TARGET_LLVM)

