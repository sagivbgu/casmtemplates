section .data
x: dd 0x4FFFFFFF
y: dd 0x41111111

section .text
;global _start
global main
;extern printf

main:
mov 	ax, [y+2]
add	[x+2], ax
mov	ax, [y]
adc	[x], ax

nop
nop