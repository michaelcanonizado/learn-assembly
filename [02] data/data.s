section .data

; DB - (Def Byte) 1 byte
; DW - (Def Word) 2 bytes
; DD - (Def Double Word) 4 bytes
; DQ - (Def Quad Word) 8 bytes
; DT - (Def Ten bytes) 10 bytes

	num DD 5

section .text
global _start

_start:
	MOV eax,1
	MOV ebx,[num]
	INT 80h
