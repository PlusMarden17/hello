format ELF executable 3
entry start

segment readable executable
start:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, msg_size
  int 0x80

  mov eax, 1
  xor ebx, ebx
  int 0x80

segment readable writable
msg db 'Hello, World!', 0xA
msg_size = $ - msg
