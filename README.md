# riscv_gcc_prebuilt

Prebuilt RISC-V GCC toolchains: `risc32-unknown-elf`

The toolchain were build according to the instructions on the [official RISC-V GNU Compiler Toolchain page](https://github.com/riscv/riscv-gnu-toolchain)
using Ubuntu 20.04 LTS on a 64-bit x86 machine (actually on Ubuntu on Windows). The compressed toolchains are located in
the [data](https://github.com/stnolting/riscv_gcc_prebuilt/tree/master/data) folder.

These prebuilt toolchain are used in the [NEORV32 Processor](https://github.com/stnolting/neorv32) project.


## Available Toolchains

| File* | GCC | march | mabi |
|:------|:---:|:-----:|:----:|
| [risc32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/raw/master/data/risc32-unknown-elf.gcc-9.2.0.rv32i.ilp32.tar.gz)   | `9.2.0` | `rv32i` | `ilp32` |
| [risc32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz](https://github.com/stnolting/riscv_gcc_prebuilt/raw/master/data/risc32-unknown-elf.gcc-9.2.0.rv32e.ilp32e.tar.gz) | `9.2.0` | `rv32e` | `ilp32e` 

*) The links will take a moment to launch.

### Installation

Download the archive of choice, unpack it and place the content into a folder on your system (like `/opt/riscv`).
Then add the toolchain's `bin` folder to your system's `PATH` environment variable (or add this line to your `.bashrc` if applicable):

    $ export PATH=$PATH:/opt/riscv/bin

Test the toolchain:

    $ riscv32-unknown-elf-gcc -v