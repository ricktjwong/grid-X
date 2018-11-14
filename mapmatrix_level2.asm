#include p18f87k22.inc
#include constants.inc
     global  mapmatrix_level2

acs0	    udata_acs
storage     res 1

mapmatrix2	    code

mapmatrix_level2

     movlb  8
     lfsr   FSR0, 0x880

     movlw  0x00
     movwf  storage
     movwf  .0
     movff  storage, PLUSW0

     movlw  0x01
     movwf  storage
     movwf  .1
     movff  storage, PLUSW0

     movlw  0x02
     movwf  storage
     movwf  .2
     movff  storage, PLUSW0

     movlw  0x03
     movwf  storage
     movwf  .3
     movff  storage, PLUSW0

     movlw  0x04
     movwf  storage
     movwf  .4
     movff  storage, PLUSW0

     movlw  0x05
     movwf  storage
     movwf  .5
     movff  storage, PLUSW0

     movlw  0x06
     movwf  storage
     movwf  .6
     movff  storage, PLUSW0

     movlw  0x07
     movwf  storage
     movwf  .7
     movff  storage, PLUSW0

     movlw  0x08
     movwf  storage
     movwf  .8
     movff  storage, PLUSW0

     movlw  0x10
     movwf  storage
     movwf  .9
     movff  storage, PLUSW0

     movlw  0x11
     movwf  storage
     movwf  .10
     movff  storage, PLUSW0

     movlw  0x12
     movwf  storage
     movwf  .11
     movff  storage, PLUSW0

     movlw  0x13
     movwf  storage
     movwf  .12
     movff  storage, PLUSW0

     movlw  0x14
     movwf  storage
     movwf  .13
     movff  storage, PLUSW0

     movlw  0x15
     movwf  storage
     movwf  .14
     movff  storage, PLUSW0

     movlw  0x16
     movwf  storage
     movwf  .15
     movff  storage, PLUSW0

     movlw  0x17
     movwf  storage
     movwf  .16
     movff  storage, PLUSW0

     movlw  0x18
     movwf  storage
     movwf  .17
     movff  storage, PLUSW0

     movlw  0x20
     movwf  storage
     movwf  .18
     movff  storage, PLUSW0

     movlw  0x21
     movwf  storage
     movwf  .19
     movff  storage, PLUSW0

     movlw  0x22
     movwf  storage
     movwf  .20
     movff  storage, PLUSW0

     movlw  0x23
     movwf  storage
     movwf  .21
     movff  storage, PLUSW0

     movlw  0x24
     movwf  storage
     movwf  .22
     movff  storage, PLUSW0

     movlw  0x25
     movwf  storage
     movwf  .23
     movff  storage, PLUSW0

     movlw  0x26
     movwf  storage
     movwf  .24
     movff  storage, PLUSW0

     movlw  0x27
     movwf  storage
     movwf  .25
     movff  storage, PLUSW0

     movlw  0x28
     movwf  storage
     movwf  .26
     movff  storage, PLUSW0

     movlw  0x30
     movwf  storage
     movwf  .27
     movff  storage, PLUSW0

     movlw  0x31
     movwf  storage
     movwf  .28
     movff  storage, PLUSW0

     movlw  0x32
     movwf  storage
     movwf  .29
     movff  storage, PLUSW0

     movlw  0x33
     movwf  storage
     movwf  .30
     movff  storage, PLUSW0

     movlw  0x34
     movwf  storage
     movwf  .31
     movff  storage, PLUSW0

     movlw  0x35
     movwf  storage
     movwf  .32
     movff  storage, PLUSW0

     movlw  0x36
     movwf  storage
     movwf  .33
     movff  storage, PLUSW0

     movlw  0x37
     movwf  storage
     movwf  .34
     movff  storage, PLUSW0

     movlw  0x38
     movwf  storage
     movwf  .35
     movff  storage, PLUSW0

     movlw  0x40
     movwf  storage
     movwf  .36
     movff  storage, PLUSW0

     movlw  0x41
     movwf  storage
     movwf  .37
     movff  storage, PLUSW0

     movlw  0x42
     movwf  storage
     movwf  .38
     movff  storage, PLUSW0

     movlw  0x43
     movwf  storage
     movwf  .39
     movff  storage, PLUSW0

     movlw  0x44
     movwf  storage
     movwf  .40
     movff  storage, PLUSW0

     movlw  0x45
     movwf  storage
     movwf  .41
     movff  storage, PLUSW0

     movlw  0x46
     movwf  storage
     movwf  .42
     movff  storage, PLUSW0

     movlw  0x47
     movwf  storage
     movwf  .43
     movff  storage, PLUSW0

     movlw  0x48
     movwf  storage
     movwf  .44
     movff  storage, PLUSW0

     movlw  0x50
     movwf  storage
     movwf  .45
     movff  storage, PLUSW0

     movlw  0x51
     movwf  storage
     movwf  .46
     movff  storage, PLUSW0

     movlw  0x52
     movwf  storage
     movwf  .47
     movff  storage, PLUSW0

     movlw  0x53
     movwf  storage
     movwf  .48
     movff  storage, PLUSW0

     movlw  0x54
     movwf  storage
     movwf  .49
     movff  storage, PLUSW0

     movlw  0x55
     movwf  storage
     movwf  .50
     movff  storage, PLUSW0

     movlw  0x56
     movwf  storage
     movwf  .51
     movff  storage, PLUSW0

     movlw  0x57
     movwf  storage
     movwf  .52
     movff  storage, PLUSW0

     movlw  0x58
     movwf  storage
     movwf  .53
     movff  storage, PLUSW0

     movlw  0x60
     movwf  storage
     movwf  .54
     movff  storage, PLUSW0

     movlw  0x61
     movwf  storage
     movwf  .55
     movff  storage, PLUSW0

     movlw  0x62
     movwf  storage
     movwf  .56
     movff  storage, PLUSW0

     movlw  0x63
     movwf  storage
     movwf  .57
     movff  storage, PLUSW0

     movlw  0x64
     movwf  storage
     movwf  .58
     movff  storage, PLUSW0

     movlw  0x65
     movwf  storage
     movwf  .59
     movff  storage, PLUSW0

     movlw  0x66
     movwf  storage
     movwf  .60
     movff  storage, PLUSW0

     movlw  0x67
     movwf  storage
     movwf  .61
     movff  storage, PLUSW0

     movlw  0x68
     movwf  storage
     movwf  .62
     movff  storage, PLUSW0

     movlw  0x70
     movwf  storage
     movwf  .63
     movff  storage, PLUSW0

     movlw  0x71
     movwf  storage
     movwf  .64
     movff  storage, PLUSW0

     movlw  0x72
     movwf  storage
     movwf  .65
     movff  storage, PLUSW0

     movlw  0x73
     movwf  storage
     movwf  .66
     movff  storage, PLUSW0

     movlw  0x74
     movwf  storage
     movwf  .67
     movff  storage, PLUSW0

     movlw  0x75
     movwf  storage
     movwf  .68
     movff  storage, PLUSW0

     movlw  0x76
     movwf  storage
     movwf  .69
     movff  storage, PLUSW0

     movlw  0x77
     movwf  storage
     movwf  .70
     movff  storage, PLUSW0

     movlw  0x78
     movwf  storage
     movwf  .71
     movff  storage, PLUSW0

     movlw  0x80
     movwf  storage
     movwf  .72
     movff  storage, PLUSW0

     movlw  0x81
     movwf  storage
     movwf  .73
     movff  storage, PLUSW0

     movlw  0x82
     movwf  storage
     movwf  .74
     movff  storage, PLUSW0

     movlw  0x83
     movwf  storage
     movwf  .75
     movff  storage, PLUSW0

     movlw  0x84
     movwf  storage
     movwf  .76
     movff  storage, PLUSW0

     movlw  0x85
     movwf  storage
     movwf  .77
     movff  storage, PLUSW0

     movlw  0x86
     movwf  storage
     movwf  .78
     movff  storage, PLUSW0

     movlw  0x87
     movwf  storage
     movwf  .79
     movff  storage, PLUSW0

     movlw  0x88
     movwf  storage
     movwf  .80
     movff  storage, PLUSW0

     return
     end