DATA SEGMENT
    PKD  DW 12H,08H,90H,33H
    UPKD DW DDUP(0)
DATA ENDS

CODE SEGMENT
    ASSUME CX:CODE,DS:DATA
    START:
    MOV AX,WORD PTR DATA
    MOV DS,AX
    
    XOR AX,AX
    MOV SI,00H
    MOV CX,4
NEXT:
    MOV AX,WORD PTR PKD[SI]
    SHL AX,4
    SHR AL,4     
    MOV UPKD[SI],AX 
    LOOP NEXT
    
CODE ENDS
END START
    