.486
.model flat, stdcall
includelib <lab5_lib.lib>
.data
mass SWORD 1,-3,-6,-3,4 
.code

Positives proto mas:ptr sword, mas_size:sbyte
_n:
    push cs
    pop ds
    invoke Positives, addr mass, 5
    ret
    end _n