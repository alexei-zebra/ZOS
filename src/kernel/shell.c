#include "define/color.h"
#include "define/integer.h"
#include "lib/graphics/graphics.h"
// #include "lib/str.h"

asm(".code16gcc\n\t"
    "call main"
    // "mov $0x4, %%ah\n"
    // "mov $0x33, %%al\n"
    // "mov $0x4, %%di\n"
    // "push $0xb800\n"
    // "pop %%es\n"
    // "stosw\n"
);

u_char8 print_char(u_char8 symbol, u_char8 color, u_char8 x, u_char8 y, u_short16 width){
    asm volatile(
        "mov %%cl, %%ah\n\t"
        "push $0xa000\n\t"
        "pop %%es\n\t"
        "stosw\n\t"
        : "=a"(symbol)
        : "a"(symbol),"c"(color),"D"((y * width + x) * 1)
        :
    );
    return symbol;
}

void main(){
    set_video_mode(0x3);
    s_video_mode_info info = get_video_mode_info();
    print_char(info.mode+0x30, c_green, 0, 4, info.width);
    for (u_char8 i; i < 10; i++){
        print_char('#', c_blue, i, 11 - i, info.width*8);
    };
}