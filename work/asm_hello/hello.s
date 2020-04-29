    .file "hello.s"
    .code16gcc
    .intel_syntax noprefix
    
    .global _start
    
    .text # @ 7c00

_start:
    lea si, hello_world
    call puts

_halt:
    hlt
    jmp _halt

puts:
    pushw ax
    movb ah, 0x0e

_puts.l1:    
    lodsb # read 1byte to AL
    cmp al, 0x00
    jz _puts.l2 #if comp is matched jump to function _puts.l2;w

    int 0x10
    jmp _puts.l1

_puts.l2:    
    popw ax # pop from stack
    ret 

    .align 0x10

hello_world:
    .string "Hello world!\n"
    .data # @ 7dfe
    
mbr_signature:
    .byte 0x55
    .byte 0xAA
