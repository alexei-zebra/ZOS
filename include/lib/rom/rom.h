#include "define/integer.h"
#include "define/s_rom.h"

class Rom
{
private:
    u_char8 boot_disk_id;

    void load_boot_disk_id();

public:
    Rom();
    ~Rom();

    u_char8 get_boot_disk_id();
    void load_data_use_daps(s_daps *);
    s_address get_daps_address(s_daps *);
    u_int32 get_address_daps(s_address);
};

Rom::Rom()
{
    load_boot_disk_id();
}

Rom::~Rom()
{
}

void Rom::load_boot_disk_id()
{
    boot_disk_id = ((u_char8 *)(0x7C80))[0];
}

u_char8 Rom::get_boot_disk_id()
{
    return boot_disk_id;
}

s_address Rom::get_daps_address(s_daps *dups){
    s_address ret;
    u_int32 address = (u_int32)((u_char8 *)dups);
    ret.p_address_high = (address >> 4);
    ret.p_address_low = (address % 16);
    return ret;
}
u_int32 Rom::get_address_daps(s_address adr){
    u_int32 ret;
    // u_int32 address = (u_int32)((u_char8 *)dups);
    // ret.p_address_high = (address >> 4);
    // ret.p_address_low = (address % 16);
    ret += adr.p_address_high << 4;
    ret += adr.p_address_low;
    return ret;
}

void Rom::load_data_use_daps(s_daps *daps){
    s_address addr = get_daps_address(daps);
    // asm volatile("push %%ds");
    asm volatile(
        "mov $0x42, %%ah\n"
        "push %%cs\n"
        "pop %%ds\n"
        "int $0x13\n"
        :
        : "d"(boot_disk_id),"c"(addr.p_address_high),"S"(addr.p_address_low)
        :
    );
    // asm volatile("pop %%ds");
}