#ifndef u_char8
#include "define/integer.h"
#endif

// struct format string len8
struct s_f_string8
{
    u_char8 len;
    u_char8 data[255];
};

u_char8 new_line[4] = "\n\r\0";

s_f_string8 str_new_f()
{
    s_f_string8 str;
    for(u_char8 i = 0; i < 255; i++){
        str.data[i] = 0;
    }
    return str;
};

void str_clear(u_char8 *str)
{
    for(u_char8 i = 0; i < 255; i++){
        str[i] = 0;
    }
};

void str_clear_f(s_f_string8 str)
{
    str_clear(str.data);
};

u_char8 str_get_len(u_char8 *str)
{
    for(u_char8 i = 0; i < 255; i++){
        if(str[i] == 0) return i;
    }
    return 0;
};

s_f_string8 str_calc_len(s_f_string8 str)
{
    for(u_short16 i = 0; i < 255; i++){
        if(str.data[i] == 0){ 
            
            str.len = i;
            break;
        }
    }
    return str;
};

u_char8 str_cmp(u_char8 *str1, u_char8 *str2)
{
    u_char8 len_str1 = str_get_len(str1);
    u_char8 len_str2 = str_get_len(str2);
    if(len_str1 != len_str2) return 1;
    for(u_char8 i = 0; i < len_str1; i++){
        if(str1[i] != str2[i]) return 1;
    }
    return 0;
};

void str_rev(u_char8* begin, u_char8* end, u_char8 n)
{
    if (n > 1)
    {
        u_char8 t = *begin;
        *begin = *end;
        *end = t;
        str_rev(begin + 1, end - 1, n - 2);
    }
};

s_f_string8 str_conv_dec(u_int32 num){
    s_f_string8 conv_str = str_new_f();
    u_short16 i = 0;
    for(; i < 255; i++){
        if(num / 10 == 0 && num % 10 == 0) break;
        u_short16 tmp = num % 10;
        num = num / 10;
        conv_str.data[i] = tmp + 0x30;
        
    }
    str_rev(conv_str.data,  conv_str.data + i - 1, i);
    conv_str.data[i] = 0;
    conv_str = str_calc_len(conv_str);
    return conv_str;
};

// s_f_string8 str_conv_hex(u_int32 num){
//     s_f_string8 conv_str = str_new_f();
//     u_short16 i = 0;
//     for(; i < 255; i++){
//         if(num / 16 == 0 && num % 16 == 0) break;
//         u_short16 tmp = num % 16;
//         num = num / 16;
//         conv_str.data[i] = tmp + 0x30;
        
//     }
//     str_rev(conv_str.data,  conv_str.data + i - 1, i);
//     conv_str.data[i] = 0;
//     conv_str = str_calc_len(conv_str);
//     return conv_str;
// };

s_f_string8 str_conv_bin(u_int32 num){
    s_f_string8 conv_str = str_new_f();
    u_short16 i = 0;
    for(; i < 255; i++){
        if(num / 2 == 0 && num % 2 == 0) break;
        u_short16 tmp = num % 2;
        num = num / 2;
        conv_str.data[i] = tmp + 0x30;
        
    }
    str_rev(conv_str.data,  conv_str.data + i - 1, i);
    conv_str.data[i] = 0;
    conv_str = str_calc_len(conv_str);
    return conv_str;
};

u_int32 int_conv_str_dec(s_f_string8 str){
    u_int32 num = 0;
    for(u_short16 i = 0; i < 255; i++){
        if(str.data[i] == 0) break;
        num = (num + (str.data[i] - 0x30)) * 10;
    }
    return num / 10;
};

// u_int32 int_conv_str_hex(s_f_string8 str){
//     u_int32 num = 0;
//     for(u_short16 i = 0; i < 255; i++){
//         if(str.data[i] == 0) break;
//         num = (num + (str.data[i] - 0x30)) * 16;
//     }
//     return num / 16;
// };

u_int32 int_conv_str_bin(s_f_string8 str){
    u_int32 num = 0;
    for(u_short16 i = 0; i < 255; i++){
        if(str.data[i] == 0) break;
        num = (num + (str.data[i] - 0x30)) * 2;
    }
    return num / 2;
};