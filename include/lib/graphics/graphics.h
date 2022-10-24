#ifndef e_Color
#include "define/color.h"
#endif
#ifndef u_char8
#include "define/integer.h"
#endif

struct s_video_mode_info
{
    u_short16 mode;
    u_short16 width;
    u_short16 height;
    u_short16 colors;
} __attribute__((packed));

u_char8 get_video_mode()
{
    u_char8 mode;
    asm volatile(
        "mov $0x0f00, %%ax\n"
        "int $0x10\n"
        :"=a"(mode)
        :
        :
    );
    return mode;
};

void set_video_mode(u_char8 mode)
{
    asm volatile(
        "mov $0x00, %%ah\n"
        "int $0x10\n"
        :
        :"a"(mode)
        :
    );
};

s_video_mode_info get_video_mode_info()
{
    s_video_mode_info info;
    u_char8 mode;
    u_char8 w;
    u_char8 h;
    asm volatile(
        "mov $0x0f00, %%ax\n"
        "int $0x10\n"
        "mov %%ah, %%cl\n"
        "mov %%bh, %%bl"
        :"=a"(mode),"=c"(w),"=b"(h)
        :
        :
    );
    info.mode = mode;
    info.width = w;
    info.height = h;
    return info;
};

u_char8* get_supported_modes()
{
    u_char8 modes[255];
    
    return modes;
};