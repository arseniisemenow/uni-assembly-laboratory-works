.586
.model flat, stdcall

.code
edinichka proc uses esi ecx, mas:ptr dword, n:dword
	mov ecx, n
	mov esi, mas
z:
	cmp byte ptr [esi], 1
	jle m
	mov byte ptr [esi], 1
m:
	add esi, 2
	loop z
	ret
edinichka endp
end edinichka

