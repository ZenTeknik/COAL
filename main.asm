.INCLUDE"M328PDEF.INC"
.org 0
	LDI R21, HIGH (RAMEND)
	OUT SPH, R21
	LDI R21, LOW (RAMEND)
	OUT SPL, R21

	LDI R31, 0xFF
	OUT DDRD, R31; PortD is now an output port
	OUT DDRC, R31; PortC is now an output port 
	CBI PORTC, 2; Enable: Low, cleared to generate a pulse later 
	CALL DELAY_2ms
	LDI R30, 0x38; Command: Initialize LCD, Command, 16*2 and 5*7
	CALL CMNDWRT
	CALL DELAY_2ms
	LDI R30, 0x0E; Command: Display On, Cursor Blinking
	CALL CMNDWRT
	CALL DELAY_2ms
	LDI R30, 0x01; Command: Clear display screen
	CALL CMNDWRT
	CALL DELAY_2ms

	LDI R30, 'C'; Data
	CALL DATAWRT
	LDI R30, 'O'; Data
	CALL DATAWRT
	LDI R30, 'A'; Data
	CALL DATAWRT
	LDI R30, 'L'; Data
	CALL DATAWRT

HERE: JMP HERE

CMNDWRT: 
	OUT PORTD, R30
	CBI PORTC, 0; Select command register
	CBI PORTC, 1; Select write operation
	SBI PORTC, 2; Enable: High
	CALL DELAY_2ms
	CBI PORTC, 2; Enable: Low
	RET

DATAWRT: 
	OUT PORTD, R30
	SBI PORTC, 0; Select command register
	CBI PORTC, 1; Select write operation
	SBI PORTC, 2; Enable: High
	CALL DELAY_2ms
	CBI PORTC, 2; Enable: Low
	RET

;-------------------
SDELAY:
	NOP
	NOP
	RET
;-------------------
DELAY_100us:
		PUSH R17
		LDI R17, 60
DR0:	CALL SDELAY
		DEC R17
		BRNE DR0
		POP R17
		RET
;-------------------
DELAY_2ms:
		PUSH R17
		LDI R17, 20
LDR0:	CALL DELAY_100us
		DEC R17
		BRNE LDR0
		POP R17
		RET
;-------------------