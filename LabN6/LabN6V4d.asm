.386
.model flat, stdcall

include E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\include\kernel32.inc
includelib E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\lib\kernel32.lib

public Start ; For linker
.data

message byte "ASSEMBLER"
message_length=9
OutH dword ?
readen dword ?
COLOR=207
STD_OUTPUT_HANDLE=(-11)
SHIFT=52

.code

Start:	invoke FreeConsole
	invoke AllocConsole

	invoke GetStdHandle, STD_OUTPUT_HANDLE
	invoke SetConsoleCursorPosition, eax, SHIFT

	invoke GetStdHandle, STD_OUTPUT_HANDLE
	invoke SetConsoleTextAttribute, eax, COLOR

	invoke GetStdHandle, STD_OUTPUT_HANDLE
	invoke WriteConsoleA, eax, addr message, message_length, offset readen, 0

	invoke FreeConsole
	invoke ExitProcess,0
end Start