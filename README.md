# riscv_gcc_prebuilt

[![Build Test](https://travis-ci.com/stnolting/riscv_gcc_prebuilt.svg?branch=master)](https://travis-ci.com/stnolting/riscv_gcc_prebuilt)
[![license](https://img.shields.io/github/license/stnolting/riscv_gcc_prebuilt)](https://github.com/stnolting/riscv_gcc_prebuilt/blob/master/LICENSE)

Prebuilt RISC-V GCC toolchains: `riscv32-unknown-elf`

The toolchains were build according to the instructions on the [official RISC-V GNU Compiler Toolchain page](https://github.com/riscv/riscv-gnu-toolchain)
using **Ubuntu 20.04 LTS** on a **64-bit x86 machine** (actually on Ubuntu on Windows). The compressed toolchains are located in
the [`data`](https://github.com/stnolting/riscv_gcc_prebuilt/tree/master/data) folder.

All toolchains support CPU extensions like `C` (compressed instructions) and `M` (hardware multiplier and divider).

These prebuilt toolchains are used by the [NEORV32 Processor](https://github.com/stnolting/neorv32) project.



## Available Toolchains

| File (will take a moment to start) | Note |GCC  | march | mabi | clib |
|:-----------------------------------|:----:|:---:|:-----:|:----:|:----:|
| [riscv32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/raw/master/data/riscv32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz)   | - | `9.2.0` | `rv32i` | `ilp32`  | _TBA_ |
| [riscv32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/raw/master/data/riscv32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz) | - | `9.2.0` | `rv32e` | `ilp32e` | _TBA_ |


### Installation

Download the archive of choice, unpack it (for example using `tar -xzf`) and place the content into a folder on your system (like `/opt/riscv`).
Then add the toolchain's `bin` folder to your system's `PATH` environment variable (or add this line to your `.bashrc` if applicable):

    $ export PATH=$PATH:/opt/riscv/bin

Test the toolchain:

    $ riscv32-unknown-elf-gcc -v


#### Continous Integration

Continuous integration provided by [Travis CI](https://travis-ci.com/stnolting/riscv_gcc_prebuilt). NOTE: The CI job does _not_ build the toolchains - it just tests them.

