# riscv_gcc_prebuilt

Prebuilt RISC-V GCC toolchains.

The toolchain were build according to the instructions on the [official RISC-V GNU Compiler Toolchain](https://github.com/riscv/riscv-gnu-toolchain) page
using Ubuntu 20.04 LTS on a 64-bit x86 machine (actually on Ubuntu on Windows).

The compressed toolchains are located in the [data](https://github.com/stnolting/riscv_gcc_prebuilt/tree/master/data) folder.


### Installation

Download the archieve of choice and place the content into a folder on your system (like `/opt/riscv`). Then add the `bin` folder to your
system's `PATH` environment variable:

    $ export PATH=$PATH:/opt/riscv/bin

## Available Toolchains

| File | GCC | march | mabi |
|:-----|:---:|:-----:|:----:|
| [risc32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/tree/master/data/risc32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz)  | 9.2.0 | `rv32i` | `ilp32` |
| [risc32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/tree/master/data/risc32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz) | 9.2.0 | `rv32e` | `ilp32e` 

