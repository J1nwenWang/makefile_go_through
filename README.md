
  # Computer System in Class Exercise

 
**Step 1:**
Refer to the makefile tutorial in the provided [link](https://makefiletutorial.com), starting from the beginning and continuing up to the 'More quick examples' section. This will help you understand how to write a makefile to compile source code into binary.


**Step 2:**
Please update the `Makefile` in the repository to compile all source files into binary and then decompile these binaries into assembly. Examples of how to compile `mk.c` to `mk.bin` and decompile `mk.bin` to `mk.dis` are already provided, the same as `local.c` and `func_wo_call.c`. Also, replace all instances of `echo "complete me"` within the file (i.e., for `local.c` and `func_w_call.c`). For convenience, please uses xx.bin and xx.dis to name the out binary and assembly. 

*Hint:*
To compile the source code `mk.c` into a binary named `mk.bin`, use the command:
`$ gcc -Wall -O0 -o mk.bin mk.c`
To decompile the binary `mk.bin` into its assembly representation `mk.dis`, use the command:
`$ objdump -D ./mk.bin > ./mk.dis`


The repository contains the following source code files:
-  `mk.c`: Contains the initial function.
-  `local.c`: Introduces a local variable.
-  `global.c`: Introduces a global variable.
-  `func_wo_call.c`: Adds a function but doesn't invoke it.
-  `func_w_call.c`: Adds a function and subsequently invokes it."


**Step 3:**
Execute the following commands in the source code directory to generate binaries and assemblies.
`$ make`
If you want to clean all the generated binary and assemblies, using following command.
`$ make clean`

Analyze the differences between the disassembled outputs of each binary. Focus on the code section within the assembly (search `<main>` and `<callee>` in assembly), especially when there are code changes between source files. When there are variable modifications in the source code, pay close attention to where the data is allocated or stored (search global_val in assembly, local variable is allocated on stack, read the code in `<main>` to find out where the number 433 (0x1b1 in hex) is stored).
