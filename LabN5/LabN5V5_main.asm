; main.asm
; Main program using the setNullValue function

section .data
    ; Declare any constants or data needed for the main program (if any)
    array db 3, -5, 7, -2, 9, -4, 0   ; Example array

section .text
    extern setNullValue   ; External reference to setNullValue

global _start

_start:
    ; Call setNullValue function to set null for negative numbers in the array
    mov esi, array   ; Set esi to point to the beginning of the array
    mov ecx, 7       ; Set the number of elements in the array
    call setNullValue

    ; Add any additional code or output as needed

    ; Exit the program
    mov eax, 1       ; System call number for exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel
