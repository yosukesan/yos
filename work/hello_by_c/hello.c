
asm(".code16gcc");               /* 16 bit realmode */
asm(".intel_syntax noprefix"); 

void hello()
{
    char *msg = "hello,world";
    while (*msg)
        asm volatile("int 0x10" : : "a" (0x0e00 | (*msg++ & 0xff)), "b" (15));

    for (;;)
        ;
}
