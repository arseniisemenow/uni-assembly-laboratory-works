.386
.model flat, stdcall

include E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\include\kernel32.inc
includelib E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\lib\kernel32.lib

public Start
.data

line byte "ASSEMBLER"
OutH dword ?
readen dword ?
COORD struct
	x dw 0
	y dw 0
COORD ends
cp COORD <>
COLOR=207

.code


Start:	invoke FreeConsole
	invoke AllocConsole
	invoke GetStdHandle, -11
	mov OutH, eax

	mov cx,52

	invoke SetConsoleCursorPosition, eax, cx

	invoke GetStdHandle, -11
	invoke SetConsoleTextAttribute, eax, COLOR

	invoke GetStdHandle, -11
	invoke WriteConsoleA, eax, addr line, 9, offset readen, 0

	invoke FreeConsole
	invoke ExitProcess,0
end Start