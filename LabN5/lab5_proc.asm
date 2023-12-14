.386 
.model flat, stdcall
public proc1
.code
proc1 proc a:ptr sbyte, b:sbyte
	xor ecx,ecx
	xor ebx,ebx
	mov cx,b
	mov esi,a
l:	cmp sbyte ptr[esi+ebx],0
	jg f
	mul sbyte ptr[esi+ebx], 2
f:	inc ebx
	loop l
	ret
proc1 endp
end proc1