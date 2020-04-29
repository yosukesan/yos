
OUTPUT_FORMAT("binary")
IPLBASE = 0x0000;

SECTIONS
{
    . = IPLBASE;
    .ipl : {
        crt.o
        ipl.o
    }

    . = IPLBASE + 510;
    .sign : {SHORT(0xAA55)}
}
