TITLE  Chapter 4, zd supplied (PlayValues.asm)

; Program:     Chapter 4, supplementary exercise
; Description: Play four DWORD values, e.g.: from 1, 2,  3, 4 to
;												  3, 4, -1, 3
; Student:     Gabriel Warkentin
; Date:        02/14/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc
.data
dwArray	DWORD 1, 2, 3, 4

.code

; A procedure to play DWORD elements in dwArray 
PlayValues PROC
; Show original array
	call Display

; Fill here, the least number of instructions
	mov EAX,dwArray+12
	dec dwArray+12
	sub dwArray+8, eax
	xchg dwArray+4, eax
	add dwArray, eax
	

; Show resulted array
	call Display
	exit
PlayValues ENDP

; A procedure to show dwArray memory by calling DumpMem 
Display PROC
	mov esi, offset dwArray 
	mov ebx, type dwArray
	mov ecx, lengthof dwArray
	call DumpMem
	ret
Display ENDP

END PlayValues