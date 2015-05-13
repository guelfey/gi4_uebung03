SECTION .data
	koeffizient DD 33, 2, 7
	ergebnis DD 0
	eingabe DD 4

SECTION .text
	global main

main:
	mov ebx, koeffizient
	mov eax, [eingabe] ; eax = x
	imul eax ; eax = x^2
	imul eax, [ebx] ; eax = a * x^2
	mov ecx, [eingabe] ; ecx = x
	imul ecx, [koeffizient + 4] ; ecx = b * x
	add eax, ecx ; eax = a * x^2 + b * x
	add eax, [koeffizient + 8] ; eax = a * x′2 + b * x + c
	mov [ergebnis], eax

	; end program
	mov ebx, 0
	mov eax, 1
	int 0x80
