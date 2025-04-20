section .data
	num1 DB 1
	num2 DB 2

section .text
global _start

_start:
	MOV bl,[num1]
	MOV cl,[num2]
	MOV eax,1
	INT 80h 
