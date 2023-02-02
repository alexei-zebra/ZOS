#include "define/integer.h"
#include "define/s_rom.h"
#include "lib/rom/rom.h"
#include "define/color.h"
#include "lib/graphics/graphics.h"
#include "lib/str.h"

asm(".code16gcc\n\t"
    "call main\n\t");

u_char8 print_char(u_char8 symbol, u_char8 color, u_char8 x, u_char8 y, u_short16 width)
{
    asm volatile(
        "mov %%cl, %%ah\n\t"
        "push $0xb800\n\t"
        "pop %%es\n\t"
        "stosw\n\t"
        : "=a"(symbol)
        : "a"(symbol), "c"(color),"D"((y * width + x) * 2)
        :
    );
    return symbol;
}

void print_logo(s_video_mode_info info, u_char8 line)
{
    print_char('Z', c_white, 3, line, info.width);
    print_char('O', c_blue, 4, line, info.width);
    print_char('S', c_red, 5, line, info.width);
}
void print_ok(s_video_mode_info info, u_char8 line)
{
    print_char('O', c_green, 2, line, info.width);
    print_char('K', c_green, 3, line, info.width);
}
void print_error(s_video_mode_info info, u_char8 line)
{
    print_char('E', c_red, 2, line, info.width);
    print_char('R', c_red, 3, line, info.width);
    print_char('R', c_red, 4, line, info.width);
    print_char('O', c_red, 5, line, info.width);
    print_char('R', c_red, 6, line, info.width);
}
void status(bool status, s_video_mode_info info, u_char8 line)
{
    if (status)
    {
        print_ok(info, line);
    } else {
        print_error(info, line);
    }; 
}

void main()
{
    // ###### init ######
    Rom rom = Rom();
    set_video_mode(0x3);
    s_video_mode_info info = get_video_mode_info();
    status(info.mode == 0x3, info, 1);
    status(rom.get_boot_disk_id() == 0x80, info, 2);
    print_logo(info, 4);

    // ###### main ######

    s_f_string8 disk = str_conv_dec(rom.get_boot_disk_id());
    // print_char(rom.get_boot_disk_id(), c_green, 2, 4, info.width);
    for (u_char8 i; i < 10; i++){
        print_char(disk.data[i], c_white, i + 8, 2, info.width);
    };
    s_daps test;
    test.p_size = 16;
    test.p_number_sectors = 8;
    test.p_offset = 0x1500;
    test.p_segment = 0;
    test.p_start_sector = 9;


    u_short16 err;
    asm volatile(
        "mov $0x42, %%ah\n\t"
        "push %%cs\n\t"
        "pop %%ds\n\t"
        "int $0x13\n\t"
        ""
        : "=a"(err)
        : "d"(rom.get_boot_disk_id()),"S"(&test)//,"c"(addr.p_address_high)
        :
    );
    print_char((err >> 8)+0x30, c_white, 8, 8, info.width);


    rom.load_data_use_daps(&test);
    s_address t2 = rom.get_daps_address(&test);

    {
        print_char(0x31, c_white, 10, 10, info.width);
        print_char('|', c_white, 15, 10, info.width);
        print_char(t2.p_address_low >> 12, c_white, 16, 10, info.width);
        print_char(t2.p_address_low >> 8 and 0x000f, c_white, 17, 10, info.width);
        print_char(t2.p_address_low >> 4 and 0x000f, c_white, 18, 10, info.width);
        print_char(t2.p_address_low and 0x000f, c_white, 19, 10, info.width);
        print_char(0x32, c_white, 10, 11, info.width);
        print_char('|', c_white, 15, 11, info.width);
        print_char(t2.p_address_high % 16 % 16 % 16 and 0x000f, c_white, 16, 11, info.width);
        print_char(t2.p_address_high % 16 % 16 and 0x000f, c_white, 17, 11, info.width);
        print_char(t2.p_address_high % 16 and 0x000f, c_white, 18, 11, info.width);
        print_char(t2.p_address_high and 0x000f, c_white, 19, 11, info.width);
        
        // for (u_char8 i; i < 16; i++){
        //     print_char(((t2.p_address_high >> i) and 1) + 0x30, c_white, 16 - i + 8, 13, info.width);
        // };
    }


    // u_char8 *test_call = (u_char8 *)0x7E00;

    asm(
        "push $0x0000\n\t"
        "pop %%ds\n\t"
        // "call %%ax\n\t"
        :
        :"a"(test.p_offset)
        :
        );


    // {
    //     for (u_char8 i; i < 16; i++){
    //     print_char(((u_char8 *)&test)[i]+0x30, c_white, 16 - i + 8, 10, info.width);
    //     };
    //     print_char(test.p_start_sector+0x30, c_white, 8, 11, info.width);

    // }
}
