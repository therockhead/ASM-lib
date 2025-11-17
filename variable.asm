.model small
.stack 100h
.data
msg db 3         ; db means "define byte", msg is the variable name, value is 3
msg1 db ?        ; '?' means this variable is not initialized, will be taken from the user
.code
main proc
    mov ax,@data  ; loads the address of the data segment into AX.
    mov ds, ax    ; moves that address into DS so the program can access data variables
    
    mov ah,2      ; 'ah, 2' is used for display purpose Sets up DOS interrupt INT 21h function 02h ? display a single character.
    add msg, 48   ; adds 48 with msg (3 + 48) = 51 will display 3 according to the ascii chart
    mov dl,msg
    int 21h   
    
    MOV ah, 1     ; input nitesi msg1 er
    INT 21h       ; executes
    MOV msg1, al   ; input neyar por value ta al registor e thakbe, 
                   ;and ami oita msg1 e move kore dilam
    
    ; new line print korar jonne
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    ; now printing msg1 value
    mov ah, 2
    mov dl, msg1
    int 21h
            
    exit:          ; program termination lines
    mov ah,4ch
    int 21h
    main endp
end main
    
     