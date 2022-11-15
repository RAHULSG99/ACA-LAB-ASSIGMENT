AREA STRING,CODE,READONLY
		ENTRY
Main
    LDR R0,=Data1
	EOR R1,R1,R1
Loop
   LDRB R2,[R0],#1
   CMP R2,#CR
   BEQ Done
   ADD R1,R1,#1
   BAL Loop
Done
   LDR R3,CharCount;
   STR R1,[R3]
Data1 DCB  "jonsnow",CR
       ALIGN
CharCount DCD 0x40000000
CR EQU 0X0D
       END	