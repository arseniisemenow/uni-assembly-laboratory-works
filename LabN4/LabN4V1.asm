;Create an array with 10 elements type of db, using while.  
;Devide by two event numbers. use macrocommands .if и  .repeat.

;shr - SHift Right
;db - Define Byte

.486
.model flat
count=10
.data
array label byte
	while count
		db count
		count=count-1
	endm
.code
_main:
	xor ebx,ebx
	mov ecx,count

divide_even_numbers_by_2:
	.repeat
		test array[ebx],1
		.if zero?
			shr array[ebx],1
		.endif
		dec ecx
		inc ebx
	.until ecx==0

end _main