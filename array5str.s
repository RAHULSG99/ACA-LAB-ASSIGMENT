AREA PROGRAM,CODE,READONLY
		ENTRY
       LDR R0,=5
	   LDR R1,=0X40000000
loop
    LDR R2,[R1],#4
	ADD R3,R3,R2
	SUB R0,R0,#1
	CMP R0,#00
	BNE loop
	LDR R4,=0X40001000
	STR R3,[R4]
	 END