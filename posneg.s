AREA PROGRAM,CODE,READONLY
		ENTRY
Main
    LDR R2,=0XD6000012;
	MOVS R2,R2,LSL #1
	BCS loop
	ADDCC R1,R1,#1
	;LDR R4,=0X40000004
	;STR R2,[R4]
	B STOP
loop
    ADDCS R0,R0,#1
	;LDR R3,=0X40000000
	;STR R2,[R3]
STOP B STOP
      END