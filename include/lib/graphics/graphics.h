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

s_video_mode_info get_video_mode_info()
{
    s_video_mode_info info;
    asm volatile(
        "mov $0x0f00, %%ax\n"
        "int $0x10\n"
        "mov %%ah, %%cl\n"
        // "mov %%bh, %%bl"
        :"=a"(info.mode),"=c"(info.width),"=b"(info.height)
        :
        :
    );
    return info;
};