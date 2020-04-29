#define INIT_SEG	0x07c0	// boot loaded here 
#define INIT_ESP	0xfff0		// stack starts here

.code16gcc
.intel_syntax noprefix		

.text

.extern hello			// start C function

.global _start
_start:	
	jmp	INIT_SEG, offset reentry

reentry:
	cli
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	esp,INIT_ESP
	sti
	
	jmp	hello
