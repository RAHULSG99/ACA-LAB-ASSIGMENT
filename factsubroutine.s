AREA program,CODE,READONLY
		ENTRY
       ldr r0,=05
       bl factorial
stop b stop
factorial
      push {r4,lr}
      mov r4,r0
	  cmp r0,#0
	  bne not_zero
	  mov r0,#1
	  b last
  not_zero
    sub r0,r0,#1
    bl factorial
    mov r1,r4
    mul r0,r1,r0
  last
       pop {r4,1r}
       bx 1r
       END