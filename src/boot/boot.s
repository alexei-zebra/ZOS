
use16
org 7c00h
cli             ;запрещаем прерывания
        xor ax,ax       ;обнуляем регистр ах
        mov ds,ax       ;настраиваем сегмент данных на нулевой адрес
        mov es,ax       ;настраиваем сегмент es на нулевой адрес
        mov ss,ax       ;настраиваем сегмент стека на нулевой адрес
        mov sp,07DFFh   ;сегмент sp указывает на текущую вершину стека
sti         ;разрешаем прерывания

        ; mov ah, 1h
        ; mov al, 1h
        ; mov di, 2h

        ; push 0A000h
        ; pop es
        ; stosw

push cs
pop ds
mov si,paket
mov ah,42h
int 13h
jmp 0000:0500h

jmp $
paket:
db 16;const paksize
db 0;null
db 4;num sectors
db 0;null
dw 0500h;shift
dw 0;segment
dq 1;start sector

times(512-2-($-07C00h)) db 0
db 055h,0AAh
;16 байт 1 сегмент