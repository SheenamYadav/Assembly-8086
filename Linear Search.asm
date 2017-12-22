DATA SEGMENT
    ARRAY     DB   04H,06H,02H,06H,33H,21H,23H,11H,68H,70H
    SEARCH    DB   03H
    RESULT    DB   00H        ; if final result is 00 this means 
                              ; that element is not present in this array
    POSITION  DW   FFH        ;FFH is a invalid positon (printed when element is not found)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    LEA SI,ARRAY
    MOV CX,9
    MOV BL,SEARCH
    
LSEARCH:
    MOV AL,[SI]
    CMP AL,BL
    JZ M1
    INC SI
    JNZ LSEARCH
    JMP THE_END
   
 M1:
    MOV RESULT,BL
    MOV POSITION,SI
    
THE_END:    
CODE ENDS
END START      