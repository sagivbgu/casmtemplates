global _start
        section .data
foo: call bar
bar: pop esi
     add esi, y-bar
     ret
_start: call foo
        mov ecx, 3
z:      pushad
y:      push dword 0x613141
        mov eax, 4
        mov ebx, 1
        mov ecx, esp
        mov edx, 3
        int 0x80
        pop eax
        popad
        add dword [esi], 0x11121380
 q:       sub dword [esi], 0x72433800
        loop z, ecx
exit:   mov eax, 1
        mov ebx, 0
        int 0x80