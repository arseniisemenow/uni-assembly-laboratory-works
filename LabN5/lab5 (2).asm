;ml /coff /c /Fl lab5.asm
;lib /out:bibl.lib lab5.obj

.486
.model flat, stdcall

.CODE
nullifier proc uses esi ecx, mas: ptr dword, n:dword
    mov ecx, n
    mov esi, mas
q:
    shr word ptr[esi],2
    jle l1
    mov word ptr[esi],0
l1:
    add esi, 2
    loop q
    ret
nullifier endp
end nullifier
