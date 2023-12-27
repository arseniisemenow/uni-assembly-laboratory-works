.386
.model flat, stdcall

include E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\include\kernel32.inc
includelib E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\lib\kernel32.lib

public Start ; linker should now where the code is starting its execution

.data
PersonInfo struct
    first_name byte 32 dup(0) 
    second_name byte 32 dup(0)
    middle_name byte 32 dup(0)
PersonInfo ends

person_info PersonInfo <>

first_name_length word 1
second_name_length word 2
middle_name_length word 3
line_output_first_name_length word 17
line_output_second_name_length word 18
line_output_middle_name_length word 18
line_first_name byte "input your first name: "
line_second_name byte "input your second name: "
line_middle_name byte "input your middle name: "
line_output_first_name byte "Your first name: "
line_output_second_name byte "Your second name: "
line_output_middle_name byte "Your middle name: "

STD_OUTPUT_HANDLE=(-11)
STD_INPUT_HANDLE=(-10)


OutH	dword	?
InH	dword	?	
readen        dword       ?	
.code 
Start:
        invoke AllocConsole

        invoke GetStdHandle, STD_INPUT_HANDLE
        mov InH,eax

        invoke GetStdHandle, STD_OUTPUT_HANDLE
        mov OutH,eax

        invoke WriteConsoleA,
                OutH,
                ADDR line_first_name,	
                23,	
                offset readen,  
                0	


        invoke ReadConsole,
                InH,
                ADDR person_info.first_name,	
                32,
                ADDR readen, 
                0

        mov ebx, [readen]
        mov first_name_length, bx

        invoke WriteConsoleA,
                OutH,
                ADDR line_second_name,
                24,
                offset readen,  
                0


        invoke ReadConsole,
                InH,
                ADDR person_info.second_name,	
                32,
                ADDR readen,
                0

        mov ebx, [readen]
        mov second_name_length, bx

        invoke WriteConsoleA,
                OutH,
                ADDR line_middle_name,	
                24,	
                offset readen,  
                0

        invoke ReadConsole,
                InH,	
                ADDR person_info.middle_name,	
                32,	
                ADDR readen,   
                0

                
        mov ebx, [readen]
        mov middle_name_length, bx

        invoke WriteConsoleA,
                OutH,
                ADDR line_output_first_name,
                line_output_first_name_length,
                0,
                0

        invoke WriteConsoleA,
                OutH,
                ADDR person_info.first_name,
                first_name_length,
                0,
                0

        invoke WriteConsoleA,
                OutH,
                ADDR line_output_second_name,
                line_output_second_name_length,
                0,
                0

        invoke WriteConsoleA,
                OutH,
                ADDR person_info.second_name,
                second_name_length,
                0,
                0
        invoke WriteConsoleA,
                OutH,
                ADDR line_output_middle_name,
                line_output_middle_name_length,
                0,
                0

        invoke WriteConsoleA,
                OutH,
                ADDR person_info.middle_name,
                middle_name_length,
                0,
                0

        invoke ReadConsole,
                InH,
                ADDR person_info.middle_name,
                32,
                ADDR readen,
                0 ; ?

        invoke FreeConsole
        invoke ExitProcess, 0
end Start