DATA SEGMENT
    ARRAY DB 01H
    B     DB 30H
    C     DB ?
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AL,ARRAY
    ADD AL,B
    MOV C,AL
CODE ENDS
END START   