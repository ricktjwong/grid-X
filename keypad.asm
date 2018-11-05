#include p18f87k22.inc

    global  keypad_input
    extern  add_delay

acs0	udata_acs   ; reserve data space in access ram
hashmap	    res 1
final_hex   res 1

keypad		code
		
keypad_input	
    banksel	PADCFG1			; PADCFG1 is not in Access Bank
    bsf		PADCFG1, REPU, BANKED	; PortE pull-ups on	
    clrf	LATE			; Clear latch
    clrf	LATD			; Clear latch
    movlw	0x0F			; 00001111 - 0 sets outputs, 1 as inputs
    movwf	TRISE, ACCESS
    
    movlw	0x00
    movwf	TRISD, ACCESS
    
    movlw	0x01
    call	add_delay
    movff	PORTE, final_hex

    clrf	LATE			; Clear latch
    movlw	0xF0			; 11110000 - 0 sets outputs, 1 as inputs
    movwf	TRISE, ACCESS
    
    movlw	0x01
    call	add_delay
    movf	PORTE, W
    addwf	final_hex, 1			;  Store in final_hex
    
map
    movff	final_hex , PORTD
    movlw	0x77
    xorwf	final_hex, 0		; subtract, store in W. Status bit Z 0 if same
    btfsc	STATUS, Z
    movlw	'1'
    btfsc	STATUS, Z	
    return
    
    movff	final_hex , PORTD
    movlw	0xB7
    xorwf	final_hex, 0		; subtract, store in W. Status bit Z 0 if same
    btfsc	STATUS, Z
    movlw	0x32
    btfsc	STATUS, Z	
    return

    return
  
    end


