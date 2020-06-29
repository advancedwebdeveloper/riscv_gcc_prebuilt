#!/bin/bash

# Abort if any command returns != 0
set -e

# Just TEST the available toolchain versions
TOOLCHAIN=riscv32-unknown-elf

# Decompress and test
echo ""

TEST=riscv32-unknown-elf.gcc-9.2.0.rv32i.ilp32
echo "Testing $TEST/$TOOLCHAIN..."
rm -rf $TEST.tmp && mkdir $TEST.tmp
tar -xzf data/$TEST.tar.gz -C $TEST.tmp/
./$TEST.tmp/bin/$TOOLCHAIN-gcc -v

echo ""

TEST=riscv32-unknown-elf.gcc-9.2.0.rv32e.ilp32e
echo "Testing $TEST/$TOOLCHAIN..."
rm -rf $TEST.tmp && mkdir $TEST.tmp
tar -xzf data/$TEST.tar.gz -C $TEST.tmp/
./$TEST.tmp/bin/$TOOLCHAIN-gcc -v
