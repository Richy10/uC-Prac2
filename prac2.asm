.INCLUDE "m328Pdef.inc"

.equ INIT_VALUE  = 0x01	; Port C 
.equ CONFIG_PORT = 0xff	; Direction register Port is DDRC
				

;------------- init PORTS -------------------------------------------

	ldi R24,CONFIG_PORT
	out DDRC,R24

	ldi R24,INIT_VALUE

 next:
	out PORTC,R24
       rol R24

	jmp next

