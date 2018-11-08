#include p18f87k22.inc
	global	xman, centre_x, centre_y

acs0	    udata_acs   ; named variables in access ram	
centre_x    res 1
centre_y    res 1
xman_x	    res 1
xman_y	    res 1
x_min	    res 1
x_max	    res 1
y_min	    res 1
y_max	    res 1
	
sprite	    code

;*** From a supplied centre position in WREG, calculate max and min ***  
xman	movff	centre_x, xman_x
	movff	centre_y, xman_y
	
	movlw	0x03
	subwf	xman_x, 0
	movwf	x_min
	
	movlw	0x03
	addwf	xman_x, 0
	movwf	x_max
	
	movlw	0x06
	subwf	xman_y, 0
	movwf	y_min
	
	movlw	0x06
	addwf	xman_y, 0
	movwf	y_max
	
	movff	x_min, xman_x
	movff	y_min, xman_y
	call	positive_gradient
	movff	x_min, xman_x
	movff	y_max, xman_y
	call	negative_gradient
	
	return
	
positive_gradient
	movff	xman_x, LATE
	movff	xman_y, LATD
	incf	xman_x
	movlw	0x02
	addwf	xman_y, 1
	movf	x_max, W
	cpfseq	xman_x
	bra	positive_gradient
	return
	
negative_gradient
	movff	xman_x, LATE
	movff	xman_y, LATD
	incf	xman_x
	movlw	0x02
	subwf	xman_y, 1
	movf	x_max, W
	cpfseq	xman_x
	bra	negative_gradient	
	return
	
	end