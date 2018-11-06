#include p18f87k22.inc

    global  keypad_input, final_hex
    extern  add_delay

acs0	udata_acs   ; reserve data space in access ram
hashmap	    res 1
final_hex   res 1

keypad		code
		
keypad_input	
    banksel	PADCFG1			; PADCFG1 is not in Access Bank
    bsf		PADCFG1, RJPU, BANKED	; PortE pull-ups on	
    clrf	LATH			; Clear latch
    clrf	LATJ			; Clear latch
    movlw	0x0F			; 00001111 - 0 sets outputs, 1 as inputs
    movwf	TRISJ, ACCESS
    
    movlw	0x00
    movwf	TRISH, ACCESS
    
    movlw	0x01
    call	add_delay
    
    movff	PORTJ, final_hex

    clrf	LATJ			; Clear latch
    movlw	0xF0			; 11110000 - 0 sets outputs, 1 as inputs
    movwf	TRISJ, ACCESS
    
    movlw	0x01
    call	add_delay
    
    movf	PORTJ, W
    addwf	final_hex, 1			;  Store in final_hex
    
    return
  
    end


