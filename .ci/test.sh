#!/bin/bash

# Abort if any command returns != 0
set -e

# Just TEST the available toolchain versions
TOOLCHAIN=riscv32-unknown-elf


# Decompress and test
TEST=riscv32-unknown-elf.gcc-9.2.0.rv32i.ilp32
echo "Testing $TEST/$TOOLCHAIN..."
rm -rf $TEST && mkdir $TEST
tar -xzf data/$TEST.tar.gz -C $TEST/
./$TEST/bin/$TOOLCHAIN-gcc -v

TEST=riscv32-unknown-elf.gcc-9.2.0.rv32e.ilp32e
echo "Testing $TEST/$TOOLCHAIN..."
rm -rf $TEST && mkdir $TEST
tar -xzf data/$TEST.tar.gz -C $TEST/
./$TEST/bin/$TOOLCHAIN-gcc -v
