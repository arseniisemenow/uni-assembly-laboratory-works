;irp - iterated repeat

.486
.model flat
.data
init_value=5
mas label sword 
irp current_var,<first_var,second_var,third_var>
	current_var sword init_value
	init_value=init_value+1
endm
.code
_n:
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	mov ax,first_var
	mov ecx,0
	irp current_var,<second_var,third_var>
		add ecx,2
		.if current_var > ax
			mov ebx,ecx
			mov ax,current_var
		.endif
	endm
	mov mas[ebx],0
ret
end _n