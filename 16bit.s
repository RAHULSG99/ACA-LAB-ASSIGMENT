AREA ADDITION,CODE,READONLY
		ENTRY
Main
   LDR R0,=NUM
   LDRH R1,[R0]
   LDRH R2,[R0,#2]
   ADD R3,R1,R2
   LDR R4,=0X40000000
   STRH R3,[R4]
STOP B STOP
NUM DCD 0X12346785
	 END