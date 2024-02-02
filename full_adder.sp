full_adder_1bit


.inc '.\32nm_bulk_TT.pm'



.OPTIONS LIST NODE POST
.TRAN 200p 80N
.PRINT TRAN power


.param  Wp=128n
.param  Lp=32n

.param  Wn=128n
.param  Ln=32n

.param  vdd        = 1
+       vgnd       = 0
+       delay      = 1p
+       sim        = 80ns


.inc '.\BasicElement.sp'
.inc '.\fa.sp'

Adder 
+ A B Cin
+ S Cout 
+ vdd vgnd	Wp	Lp	Wn	Ln     full_adder_1






vdd vdd 0 vdd
vgnd vgnd 0 vgnd

Vin0 A 0 0 PULSE 0 vdd 3N 0N 0N 3N 2N
Vin1 B 0 0 PULSE 0 vdd 3N 0N 0N 3N 4N
Vin2 Cin 0 0 PULSE 0 vdd 3N 0N 0N 3N 8N


.MEASURE TRAN pow AVG POWER FROM=0n TO=80n


.measure tran avgpower	AVG  power  	FROM = 1ns TO = sim

.END

