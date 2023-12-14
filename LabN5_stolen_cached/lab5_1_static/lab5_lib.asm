.486
.model flat, stdcall
public Positives
.code
Positives proc uses esi eax ecx edx, mas:ptr sword, mas_size:sbyte
    xor ecx,ecx
    xor eax,eax
    xor ebx,ebx
    mov esi,mas
    mov cl, mas_size
    xor edx,edx
l:
    ;mov [esi], al
    cmp [esi],edx
    jl lower
    inc ax
lower:
    add esi, 2
    loop l
    ret
Positives endp
end Positives

