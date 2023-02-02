
use16
org 7C00h
cli             ;запрещаем прерывания
        xor ax,ax       ;обнуляем регистр ах
        mov ds,ax       ;настраиваем сегмент данных на нулевой адрес
        mov es,ax       ;настраиваем сегмент es на нулевой адрес
        mov ss,ax       ;настраиваем сегмент стека на нулевой адрес
        mov sp,07a00h   ;сегмент sp указывает на текущую вершину стека
sti         ;разрешаем прерывания

        ; mov ah, 1h
        ; mov al, dl
        ; mov di, 2h

        ; push 0b800h
        ; pop es
        ; stosw

mov [disk_id],dl

push cs
pop ds
mov si,paket
mov ah,42h
int 13h
jmp 0000:8000h

jmp $
paket:
dw 16;const paksize
dw 8;num sectors
dw 8000h;offset
dw 0;segment
dq 1;start sector

times(128-($-07C00h)) db 0

disk_id: db 33h,34h

times(512-2-($-07C00h)) db 0
db 055h,0AAh
;16 байт 1 сегмент