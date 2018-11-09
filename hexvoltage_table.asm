#include p18f87k22.inc
#include constants.inc
    global  hexvoltage_table
    
acs0	    udata_acs   ; named variables in access ram	
storage2     res 1
	
hexvoltage	    code
	    
hexvoltage_table
    ; ROW 1
    movlb	8		    ; select bank 8
    lfsr	FSR0, 0x880	    ; point FSR1 to the middle of bank 8
    movlw	0x00		    ; load all of the ascii codes into locations +/- away from the FSR1
    movwf	storage2
    movlw	0x00
    movff	storage2, PLUSW0
    
    movlw	0x01		    
    movwf	storage2
    movlw	0x01
    movff	storage2, PLUSW0
    
    movlw	0x02		    
    movwf	storage2
    movlw	0x02
    movff	storage2, PLUSW0
    
    movlw	0x03		    
    movwf	storage2
    movlw	0x03
    movff	storage2, PLUSW0
    
    movlw	0x04		    
    movwf	storage2
    movlw	0x04
    movff	storage2, PLUSW0
    
    movlw	0x05		    
    movwf	storage2
    movlw	0x05
    movff	storage2, PLUSW0
    
    movlw	0x06		    
    movwf	storage2
    movlw	0x06
    movff	storage2, PLUSW0
    
    ; ROW 2 
    
    movlw       0x10
    movwf       storage2
    movlw       0x07
    movff       storage2, PLUSW0
    
    movlw       0x11
    movwf       storage2
    movlw       0x08
    movff       storage2, PLUSW0
    
    movlw       0x12
    movwf       storage2
    movlw       0x09
    movff       storage2, PLUSW0
    
    movlw       0x13
    movwf       storage2
    movlw       0x0A
    movff       storage2, PLUSW0
    
    movlw       0x14
    movwf       storage2
    movlw       0x0B
    movff       storage2, PLUSW0
    
    movlw       0x15
    movwf       storage2
    movlw       0x0C
    movff       storage2, PLUSW0
    
    movlw       0x16
    movwf       storage2
    movlw       0x0D
    movff       storage2, PLUSW0
    
    ; ROW 3
    
    movlw       0x20
    movwf       storage2
    movlw       0x0E
    movff       storage2, PLUSW0

    movlw       0x21
    movwf       storage2
    movlw       0x0F
    movff       storage2, PLUSW0

    movlw       0x22
    movwf       storage2
    movlw       0x10
    movff       storage2, PLUSW0

    movlw       0x23
    movwf       storage2
    movlw       0x11
    movff       storage2, PLUSW0

    movlw       0x24
    movwf       storage2
    movlw       0x12
    movff       storage2, PLUSW0

    movlw       0x25
    movwf       storage2
    movlw       0x13
    movff       storage2, PLUSW0

    movlw       0x26
    movwf       storage2
    movlw       0x14
    movff       storage2, PLUSW0
    
    ; ROW 4
    
    movlw       0x30
    movwf       storage2
    movlw       0x15
    movff       storage2, PLUSW0

    movlw       0x31
    movwf       storage2
    movlw       0x16
    movff       storage2, PLUSW0

    movlw       0x32
    movwf       storage2
    movlw       0x17
    movff       storage2, PLUSW0

    movlw       0x33
    movwf       storage2
    movlw       0x18
    movff       storage2, PLUSW0

    movlw       0x34
    movwf       storage2
    movlw       0x19
    movff       storage2, PLUSW0

    movlw       0x35
    movwf       storage2
    movlw       0x1A
    movff       storage2, PLUSW0

    movlw       0x36
    movwf       storage2
    movlw       0x1B
    movff       storage2, PLUSW0
    
    ; ROW 4
    
    movlw       0x40
    movwf       storage2
    movlw       0x1C
    movff       storage2, PLUSW0

    movlw       0x41
    movwf       storage2
    movlw       0x1D
    movff       storage2, PLUSW0

    movlw       0x42
    movwf       storage2
    movlw       0x1E
    movff       storage2, PLUSW0

    movlw       0x43
    movwf       storage2
    movlw       0x1F
    movff       storage2, PLUSW0

    movlw       0x44
    movwf       storage2
    movlw       0x20
    movff       storage2, PLUSW0

    movlw       0x45
    movwf       storage2
    movlw       0x21
    movff       storage2, PLUSW0

    movlw       0x46
    movwf       storage2
    movlw       0x22
    movff       storage2, PLUSW0
    
    ; ROW 5
    
    movlw       0x50
    movwf       storage2
    movlw       0x23
    movff       storage2, PLUSW0

    movlw       0x51
    movwf       storage2
    movlw       0x24
    movff       storage2, PLUSW0

    movlw       0x52
    movwf       storage2
    movlw       0x25
    movff       storage2, PLUSW0

    movlw       0x53
    movwf       storage2
    movlw       0x26
    movff       storage2, PLUSW0

    movlw       0x54
    movwf       storage2
    movlw       0x27
    movff       storage2, PLUSW0

    movlw       0x55
    movwf       storage2
    movlw       0x28
    movff       storage2, PLUSW0

    movlw       0x56
    movwf       storage2
    movlw       0x29
    movff       storage2, PLUSW0
    
    ; ROW 6
    
    movlw       0x60
    movwf       storage2
    movlw       0x2A
    movff       storage2, PLUSW0

    movlw       0x61
    movwf       storage2
    movlw       0x2B
    movff       storage2, PLUSW0

    movlw       0x62
    movwf       storage2
    movlw       0x2C
    movff       storage2, PLUSW0

    movlw       0x63
    movwf       storage2
    movlw       0x2D
    movff       storage2, PLUSW0

    movlw       0x64
    movwf       storage2
    movlw       0x2E
    movff       storage2, PLUSW0

    movlw       0x65
    movwf       storage2
    movlw       0x2F
    movff       storage2, PLUSW0

    movlw       0x66
    movwf       storage2
    movlw       0x30
    movff       storage2, PLUSW0

    return
    
    end


