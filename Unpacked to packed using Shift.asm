DATA SEGMENT
    UPKD   DB   12H,43H,00H,51H
    PKD    DB   4DUP(0)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,WORD PTR DATA
    MOV DS,AX
        
    MOV SI,00H
    MOV CX,4

NEXT:
    MOV AX,WORD PTR UPKD[SI]
    SHL AL,4
    SHR AX,4
    MOV PKD[SI],AL
    INC SI
    LOOP NEXT
    
CODE ENDS
END START