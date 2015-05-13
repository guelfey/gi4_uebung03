SECTION .text
	global main

main:
	mov ebx, 2 ; ebx = x (2)
	mov eax, ebx ; eax = x
	imul eax ; eax = x^2
	imul eax, 3 ; eax = 3x^2
	imul ebx, 4 ; ebx = 4x
	add eax, ebx ; eax = 3x^2 + 4x
	sub eax, 5 ; eax = 3x^2 + 4x - 5

	; end program
	mov ebx, 0
	mov eax, 1
	int 0x80
