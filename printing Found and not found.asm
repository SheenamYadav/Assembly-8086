
; The easiest way to print out "Hello, World!"

name "hi"

org 100h

jmp start       ; jump over data declaration

msg1:    db      "Found", 0Dh,0Ah, 24h
msg2:    db     "Not Found", 0Dh,0Ah, 24h

start:  mov     dx, msg1  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
        mov     ah, 0 
        ;int     16h      ; wait for any key.... 
        
        mov     dx,msg2  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
        mov     ah, 0 
        int     16h      ; wait
        
ret ; return to operating system.