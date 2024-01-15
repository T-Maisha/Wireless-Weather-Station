.model small
.stack 100h
.data  
n db 5
arr dw 5 dup (?) 
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,01h
    int 21h
    mov n,al
    
    mov ah,02h
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    mov cx,5
    lea bx,arr
    
    l1:
    mov ah,01h
    int 21h
    mov [bx],ax
    inc bx
    loop l1
    
    mov ah,02h
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    mov cx,5
    lea bx,arr
    mov dx,0h
    
    l2: 
    mov ax,[bx]
    and ax,0fh
    add dx,ax
    inc bx
    loop l2
    
    and dx,0fh
          
    mov ah,02h
    int 21h
    exit:
    ;mov ah,4ch
    ;int 21h
    
    main endp
end