section .data
x: db 0,0,0,0,0,0
y: db 0x00,0xb8,0x01,0x40

section .text
global _start
;global main
;extern printf

_start:
fld tword [x]
fld dword [y]
nop
nop
nop

;b main

;b _start
;layout regs
;set disassembly-flavor intel

;tui reg float