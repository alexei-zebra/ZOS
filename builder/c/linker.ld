OUTPUT_FORMAT(binary)
SECTIONS
{
    . = 0x8000;
    .text :
    {
        *(.text);
    }
    .data :
    {
        *(.data);
        *(.bss);
        *(.rodata);
    }
}