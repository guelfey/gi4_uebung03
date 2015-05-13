SECTION .data
	complex1 DD 2, 3
	complex2 DD 3, 4
	ergebnis TIMES 2 DD 0

SECTION .text
	global main

main:
	; compute real part
	mov eax, [complex1]
	imul eax, [complex2]
	mov ebx, [complex1 + 4]
	imul ebx, [complex2 + 4]
	sub eax, ebx
	mov dword [ergebnis], eax

	; compute imaginary part
	mov eax, [complex1]
	imul eax, [complex2 + 4]
	mov ebx, [complex1 + 4]
	imul ebx, [complex2]
	add eax, ebx
	mov dword [ergebnis + 4], eax

	mov ebx, 0
	mov eax, 1
	int 0x80
