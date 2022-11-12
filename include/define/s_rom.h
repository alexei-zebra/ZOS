#include "integer.h"

#ifndef S_ROM
struct s_daps
{
    u_short16 p_size = 16;
    u_short16 p_number_sectors;
    u_short16 p_offset;
    u_short16 p_segment;
    u_long64 p_start_sector;
} __attribute__((packed));

struct s_address
{
    u_short16 p_address_low;
    u_short16 p_address_high;
} __attribute__((packed));
#endif

#define S_ROM