		#include <P18F452.INC>
		CONFIG OSC = HS
		CONFIG OSCS = OFF
		CONFIG BOR = OFF
		CONFIG WDT = OFF
		CONFIG PWRT = OFF
		CONFIG LVP = OFF
		ORG 		0x0000
		
		CLRF		PORTD
		MOVLW		0x1F ;0001 1111
		MOVWF		TRISD		
		MOVLW		0x07 ;0000 0111
		MOVWF		TRISC
		
MAIN
		BTFSC		PORTC,0
		GOTO		MAIN1
		BSF		PORTD,5	
		GOTO		LOOP
MAIN1
		BTFSC		PORTC,2
		GOTO		MAIN2
		BSF		PORTD,6
		GOTO		LOOP
MAIN2
		BTFSC		PORTC,1
		GOTO		MAIN
		BSF		PORTD,7	
		GOTO		LOOP

LOOP
		GOTO		LOOP
END
	