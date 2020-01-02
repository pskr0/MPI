;Checks +ve or -ve Number
.model small
assume cs:code,ds:code
data segment 
    a db 9ch
    p db "positive"
    n db "negative"
data ends
code segment
    mov ax,data
    mov dx,ax
    mov al,a
    rol al,1
    jnc pv
    jc nv
    pv:mov dx,offset p
    jmp exit
    nv:mov dx,offset n
    exit: mov ah,09h
    int 21h
code ends
    
                               