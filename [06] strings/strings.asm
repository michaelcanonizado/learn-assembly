section .data
	string DB "assembly",0
	newline db 0xA, 0
	len EQU $ - string

section .text
global _start

_start:
	; Print new line
	MOV eax,4
	MOV ebx,1
	MOV ecx,newline
	MOV edx,1
	INT 80h

	MOV eax,4 ; sys_write function call
	MOV ebx,1 ; param 1(file descirptor): stdout
	MOV ecx,string ; param 2(const char*): the string
	MOV edx,len ; param 3(int): how many bytes to print
	INT 80h ; Interupt program to initiate sys_write

	; Print new line
	MOV eax,4
	MOV ebx,1
	MOV ecx,newline
	MOV edx,1
	INT 80h

	; Exit program
	mov eax, 1
    xor ebx, ebx
    int 0x80
