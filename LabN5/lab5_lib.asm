.486
.model flat, stdcall
public Positives
.code
Positives proc uses eax ecx, mas:ptr sword, mas_size:sbyte
    xor ecx,ecx
    xor eax,eax
    xor ebx,ebx
    mov esi,mas
    mov cl, mas_size
l:
    mov [esi], al
    cmp [esi],0
    jl lower
    inc ax
lower:
    inc esi
    loop l
    ret
Positives endp
end Positives

