.486
.model flat, stdcall
include <LabN5V5_lib.inc>
;clear_negative_numbers_in_array PROTO :ptr dword, :dword
includelib <LabN5V5_lib.lib>
.data
array DWORD 1,-2,3,-4,5 
.code

_n:

    invoke clear_negative_numbers_in_array, addr array, 5
    ret
    end _n