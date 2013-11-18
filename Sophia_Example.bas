'-------------------------------------------------------------------------------
'  RAFAEL A. OQUENDO
'-------------------------------------------------------------------------------
'  Program: Currently unknown.bas
'  11/18/2013
'  Copy 2013 by Rafael Oquendo
'-------------------------------------------------------------------------------
'Sophia Program Altered By Rafael Oquendo
$regfile = "m16def.dat"                                     ' specify the used micro
$crystal = 8000000                                          ' used crystal frequency
$baud = 19200                                               ' use baud rate
$hwstack = 32                                               ' default use 32 for the hardware stack
$swstack = 10                                               ' default use 10 for the SW stack
$framesize = 40

'$sim

Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , E = Portd.3 , Rs = Portd.2

Dim C As Byte
Dim D As Byte

Cls

Loadadr C , Y                                               ' Load address of C into R27 1nd R26

Input C

!lds r11, &H0060                                            ' Stored In Memory Location &H60

Input D

Loadadr D , X

!lds r12, &H0061                                            ' Stored in Memory Location &H61

!mul r12, r11

!st y, r0

Print C

Lcd C

End