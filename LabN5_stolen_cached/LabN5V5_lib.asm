;movzx - MOVe Zero eXtended
.486
.model flat, stdcall
;public clear_negative_numbers_in_array

clear_negative_numbers_in_array PROTO :ptr dword, :dword
.code
clear_negative_numbers_in_array PROC uses ecx, array:ptr dword, array_size:dword
    xor ecx, ecx
    mov ecx, array_size  ; Set ecx to the array size

start:
    .repeat
        dec ecx
        cmp ecx, 0          ; Check if we reached the beginning of the array
        jl done
        cmp array[ecx], 0   ; Check if the current element is negative
        jl handle_negative_number
        jmp start
    .until ecx==0

handle_negative_number:
    mov array[ecx], 0
    jmp start

done:
    ret
clear_negative_numbers_in_array endp
end clear_negative_numbers_in_array
