all: mk_compile mk_decompile local_compile local_decompile global_compile global_decompile func_wo_call_compile func_wo_call_decompile func_w_call_compile func_w_call_decompile

mk_compile: mk.c
	gcc -Wall -O0 -o mk.bin mk.c

mk_decompile: mk.bin
	objdump -D ./mk.bin > ./mk.dis

local_compile: local.c
	gcc -Wall -O0 -o local.bin local.c
	
local_decompile: local.bin
	objdump -D ./local.bin > ./local.dis

global_compile: global.c
	echo "complete me"

global_decompile: global.bin
	echo "complete me"

func_wo_call_compile: func_wo_call.c
	gcc -Wall -O0 -o func_wo_call.bin func_wo_call.c

func_wo_call_decompile: func_wo_call.bin
	objdump -D ./func_wo_call.bin > ./func_wo_call.dis

func_w_call_compile: func_w_call.c
	echo "complete me"

func_w_call_decompile: func_w_call.bin
	echo "complete me"

clean:
	rm -rf ./*.bin ./*.dis