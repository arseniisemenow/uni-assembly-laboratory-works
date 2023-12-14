.386
.model flat,stdcall
.data
arr sbyte 1,2,-4,-5,6
.code 
Includelib <mylib>
NulNegate proto mas:ptr sbyte, len:dword

_start:
push cs
pop ds

invoke NulNegate, addr arr, 5

ret
end _start 
