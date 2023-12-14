.486
.model flat, stdcall
.data
mas 	dw 1,-2,3,-4,5
.code
nuli proc uses eax ecx esi, msi:ptr word, kol: dword
	mov ecx,kol
	mov esi,msi
m:	mov al, [esi * 2]
	cmp [esi * 2], 0
	jg l
	mov al, 0
l:	inc esi
	loop m
	ret
nuli endp
_start:
	invoke nuli,  offset masi, addr masp, 4
	end _start
