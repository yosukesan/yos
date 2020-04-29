
#define INIT_SEG    0x07c0 // boot loader addr
#define INIT_ESP    0xfff0 // stack addr

.code16gcc
.intel_syntax noprefix

.text

.extern hello // start C lang function

.global _start
_start:
    jmp 0x07c0, offset reentry

reentry:
    cli
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov esp, INIT_ESP
    sti

    jmp hello

