#include "define/color.h"
#include "define/integer.h"
#include "lib/graphics/graphics.h"
#include "lib/str.h"

asm(".code16gcc\n"
    "call main\n");

u_char8 print_char(u_char8 symbol, u_char8 color, u_char8 x, u_char8 y){
    asm volatile(
        "mov %%cl, %%ah\n"
        "push $0xb800\n"
        "pop %%es\n"
        "stosw\n"
        : "=a"(symbol)
        : "a"(symbol),"c"(color),"D"(x*2)
        :
    );
    return symbol;
}

void main(){
    s_video_mode_info info = get_video_mode_info();
    print_char(str_conv_dec(info.mode).data[1], c_green, 1, 4);
    // print_char((get_video_mode()>>8)+0x30, c_purple, 2, 4);
    // get_video_mode();
    // print_char(print_char(0x3, c_purple, 1, 4), c_purple, 2, 4);
}