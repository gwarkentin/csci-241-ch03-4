# csci-241-ch03-4
Play_Values_In_Array

Write an ASM program to play with four DWORD values in an array using less instructions. Your program should show the following outputs as before and after:
Dump of offset 00406100
-------------------------------
00000001  00000002  00000003  00000004

Dump of offset 00406100
-------------------------------
00000003  00000004  FFFFFFFF  00000003
Press any key to continue . . .
From now on, you must use Irvine32.lib by downloading and installing Link libraries and example programs from the textbook site. For this template project with Irvine32 support, download Project32.zip. Then you can copy the following code to fill blanks with the requirements:
Find the least number of instructions, choosing from MOV, XCHG, INC, DEC, ADD, SUB, or NEG, with 5 instructions suggested
Each different instruction can be used only once in your preferred code sequence
Use only memory variables and registers as operands without immediate operands like SUB dwArray+8, 4 not allowed
TITLE  Chapter 4, zd supplied (PlayValues.asm)

; Program:     Chapter 4, supplementary exercise
; Description: Play four DWORD values, e.g.: from 1, 2, 3, 4 to 3, 4, -1, 3
; Student:     James Hope
; Date:        02/09/2012
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
  ; ...

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
