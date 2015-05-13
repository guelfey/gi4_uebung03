SECTION .data
	koeffizient DD 33, 2, 7
	ergebnis DD 0
	eingabe DD 4

SECTION .text
	global main

main:
	mov ebx, koeffizient
	mov eax, [eingabe] ; eax = x
	imul eax, [koeffizient] ; eax = a * x
	add eax, [koeffizient + 4] ; eax = a * x + b
	imul eax, [eingabe] ; eax = a * x^2 + b * x
	add eax, [koeffizient + 8] ; eax = a * x^2 + b * x + c
	mov [ergebnis], eax

	; end program
	mov ebx, 0
	mov eax, 1
	int 0x80
