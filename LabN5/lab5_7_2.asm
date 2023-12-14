.586
.model flat, stdcall
.code

Bibl proc hInstDLL:DWORD, reason:DWORD, reserved:DWORD 
	mov eax, -1 
	ret 
Bibl endp 

NulNegate proc uses eax ebx ecx esi, mas:ptr sbyte, len:dword
    mov ecx,len
    mov esi,mas
    xor ebx,ebx
m: mov al, [esi]
    cmp al,0
    jge n
    xor al,al
    mov [esi],al
 n: inc esi
    loop m
    ret
NulNegate endp
end Bibl