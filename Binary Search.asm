DATA SEGMENT
    ARRAY     DB   1,2,3,4,5,6,7
    ELE       DB   6
    FIRST     DW   0
    LAST      DW   6
    TWO       DB   2
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    
NEXT:
    MOV AH,0
    MOV AX,FIRST
    ADD AX,LAST
    DIV TWO      ; divivde the contents of AX by 2 and store result in AX 
    MOV AH,0
    MOV SI,AX
    MOV AL,ARRAY[SI]
    CMP AL,ELE
    JE FOUND
    JL REPEAT
    MOV LAST,SI
    JMP SEQ
    
REPEAT:
    INC SI
    MOV FIRST,SI
    
SEQ:
    MOV AH,0
    MOV AX,FIRST
    CMP AX,LAST
    JLE NEXT
    
FOUND:
    HLT
CODE ENDS
END START