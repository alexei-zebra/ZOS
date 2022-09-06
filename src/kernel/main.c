#include "define/color.h"
#include "define/int.h"

asm(".code16gcc\n"
    "call main\n");

void print_char(u_char8 symbol, u_char8 color){
    asm volatile("pusha");
    asm volatile(
        // ".code16gcc\n"
        "mov $0x00, %%ch\n"
        "mov $0x5a, %%al\n"
        "mov $0x0a, %%ah\n"
        // "mov $0x4e00, %%cx\n"
        "int $0x10\n"
        :
        : "a"(symbol),"c"(color)
        :
    );
    asm volatile("popa");
}

void main(){
    print_char('Z', 0x2);
}

