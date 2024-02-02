* BasicElements
*************************************************
.SUBCKT	Nmos_chk A ZN VDD VSS		Wp	Lp	Wn	Ln

	Mn1		ZN		A		VDD		VSS		nmos		L='1*Ln'		W='1*Wn'

.ENDS
*************************************************
.SUBCKT	Pmos_chk A ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A		VDD		VSS		pmos		L='1*Lp'		W='2*Wp'

.ENDS
*************************************************
.SUBCKT	INV_X1 A ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mn1		ZN		A		VSS		VSS		nmos		L=Ln		W='1*Wn'

.ENDS

.SUBCKT	INV_X1_weak A ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A		VDD		VDD		pmos		L=Lp		W='1*Wn'
	Mn1		ZN		A		VSS		VSS		nmos		L=Ln		W='1*Wn'

.ENDS
*************************************************
.SUBCKT	NAND2_X1 A1 A2 ZN VDD VSS	Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln		W='2*Wn'
	Mn2		n1		A2		VSS		VSS		nmos		L=Ln		W='2*Wn' 
	
.ENDS	
*************************************************
.SUBCKT	NAND3_X1 A1 A2 A3 ZN VDD VSS	Wp	Lp	Wn	Ln

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp3		ZN		A3		VDD		VDD		pmos		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln		W='3*Wn'
	Mn2		n1		A2		n2		VSS		nmos		L=Ln		W='3*Wn'
	Mn3		n2		A3		VSS		VSS		nmos		L=Ln		W='3*Wn'
	
.ENDS
*************************************************
.SUBCKT	NAND4_X1 A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp3		ZN		A3		VDD		VDD		pmos		L=Lp		W='2*Wp'
	Mp4		ZN		A4		VDD		VDD		pmos		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln		W='4*Wn'
	Mn2		n1		A2		n2		VSS		nmos		L=Ln		W='4*Wn'
	Mn3		n2		A3		n3		VSS		nmos		L=Ln		W='4*Wn'
	Mn4		n3		A4		VSS		VSS		nmos		L=Ln		W='4*Wn'	
		
.ENDS
*************************************************
.SUBCKT	NOR2_X1 A1 A2 ZN VDD VSS	Wp	Lp	Wn	Ln

	Mp1		ZN		A1		p1		VDD		pmos		L=Lp		W='4*Wp'
	Mp2		p1		A2		VDD		VDD		pmos		L=Lp		W='4*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln		W='1*Wn'
	
.ENDS
*************************************************
.SUBCKT	NOR3_X1 A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		p1		p1		pmos		L=Lp		W='6*Wp'
	Mp2		p1		A2		p2		p2		pmos		L=Lp		W='6*Wp'
	Mp3		p2		A3		VDD		VDD		pmos		L=Lp		W='6*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn3		ZN		A3		VSS		VSS		nmos		L=Ln		W='1*Wn'
		
.ENDS
*************************************************
.SUBCKT	NOR4_X1 A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A1		p1		p1		pmos		L=Lp		W='8*Wp'
	Mp2		p1		A2		p2		p2		pmos		L=Lp		W='8*Wp'
	Mp3		p2		A3		p3		p3		pmos		L=Lp		W='8*Wp'
	Mp4		p3		A4		VDD		VDD		pmos		L=Lp		W='8*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn3		ZN		A3		VSS		VSS		nmos		L=Ln		W='1*Wn'
	Mn4		ZN		A4		VSS		VSS		nmos		L=Ln		W='1*Wn'

.ENDS
*************************************************
.SUBCKT	AND2_X1 A1 A2 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnand2		A1 A2 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND2_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1

.ENDS
*************************************************
.SUBCKT	AND3_X1 A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnand3		A1 A2 A3 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND3_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1

.ENDS
*************************************************
.SUBCKT	AND4_X1 A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnand4		A1 A2 A3 A4 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND4_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1

.ENDS
*************************************************
.SUBCKT	OR2_X1 A1 A2 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnor2		A1 A2 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1

.ENDS
*************************************************
.SUBCKT	OR3_X1 A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnor3		A1 A2 A3 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR3_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1
	
.ENDS
*************************************************
.SUBCKT	OR4_X1 A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnor4		A1 A2 A3 A4 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR4_X1
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1
 
.ENDS
*************************************************
.SUBCKT	XOR2_X1 A B Z VDD VSS		Wp	Lp	Wn	Ln

	Mp1 	1 	A		VDD		VDD 	pmos 	L=Lp 	W='8*Wp'
	Mp2 	Z	A_bar	1 		VDD 	pmos 	L=Lp 	W='8*Wp'
	Mp3 	1	B 		VDD 	VDD 	pmos 	L=Lp 	W='8*Wp'
	Mp4 	Z	B_bar 	1 		VDD 	pmos 	L=Lp 	W='8*Wp'
		
	Mn1 	Z 	A_bar 	2 		VSS 	nmos 	L=Ln 	W='4*Wn'
	Mn2 	2 	B_bar 	VSS 	VSS 	nmos 	L=Ln 	W='4*Wn'
	Mn3 	Z 	A 		3 		VSS 	nmos 	L=Ln 	W='4*Wn'
	Mn4 	3 	B 		VSS 	VSS 	nmos 	L=Ln 	W='4*Wn'

	Xnot1		A	A_bar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
	Xnot2		B	B_bar VDD VSS	Wp	Lp	Wn	Ln		INV_X1

.ENDS
*************************************************
.SUBCKT	XNOR2_X1 A B ZN VDD VSS		Wp	Lp	Wn	Ln

	Xxor2		A B ou1	VDD	VSS		Wp	Lp	Wn	Ln		XOR2_X1
	Xnot		ou1 ZN VDD VSS		Wp	Lp	Wn	Ln		INV_X1
	
.ENDS
*************************************************
.subckt Latch0_opaque D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1

Mnreset Q 	aset 	vss vss nmos	L=Ln 	W='16*Wn'

X_INV	D 	Dbar	vdd	vss	Wp	Lp	Wn	Ln	INV_X1

.ends 
*************************************************
.subckt Latch1_opaque D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1


Mnreset Q 	asetbar 	vdd	vdd 	pmos			L=Lp 	W='16*Wp'

X_INV1		aset 	asetbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1
X_INV2		D 		Dbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1

.ends 
*************************************************
.subckt Latch0_open D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNOR2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NOR2_X1
XNOR2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NOR2_X1
XNOR2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NOR2_X1
XNOR2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NOR2_X1

Mnreset Q 	aset 	vss vss nmos	L=Ln 	W='16*Wn'

X_INV	D 	Dbar	vdd	vss	Wp	Lp	Wn	Ln	INV_X1

.ends 
*************************************************
.subckt Latch1_open D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NAND2_X1
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1


Mnreset Q 	asetbar 	vdd	vdd 	pmos			L=Lp 	W='16*Wp'

X_INV1		aset 	asetbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1
X_INV2		D 		Dbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1

.ends 
*************************************************
.subckt DFF0_opaque D Clk Q Qbar aset vdd vss	Wp	Lp	Wn	Ln

    X_Latch0_opaque0 D   Clk     mid aset vdd vss Wp Lp Wn Ln Latch0_opaque
    X_Latch0_opaque1 mid Clk_bar Q   aset vdd vss Wp Lp Wn Ln Latch0_opaque

    X_not0  Clk  Clk_bar  vdd  vss  Wp  Lp  Wn  Ln  INV_X1
    X_not1  Q    Qbar     vdd  vss  Wp  Lp  Wn  Ln  INV_X1

.ends 
*************************************************
.subckt DFF1_opaque D Clk Q Qbar aset vdd vss	Wp	Lp	Wn	Ln

    X_Latch0_opaque0 D   Clk     mid aset vdd vss Wp Lp Wn Ln Latch1_opaque
    X_Latch0_opaque1 mid Clk_bar Q   aset vdd vss Wp Lp Wn Ln Latch1_opaque

    X_not0  Clk  Clk_bar  vdd  vss  Wp  Lp  Wn  Ln  INV_X1
    X_not1  Q    Qbar     vdd  vss  Wp  Lp  Wn  Ln  INV_X1

.ends 
*************************************************
.SUBCKT	CGate	ZN	ZNBAR 	A	B	aset VDD	VSS	Wp	Lp	Wn	Ln		

	M_p1	ZNBAR	A	p1	VDD		pmos	L=Lp	W='2*Wp'
	M_n1	ZNBAR	A	n1	VSS		nmos	L=Ln	W='1*Wn'

	M_p2	p1		B	VDD	VDD		pmos	L=Lp	W='2*Wp'
	M_n2	n1		B	VSS	VSS		nmos	L=Ln	W='1*Wn'

	M_p3	ZNBAR	A	h0	VDD		pmos	L=Lp	W='2*Wp'
	M_n3	ZNBAR	A	h1	VSS		nmos	L=Ln	W='1*Wn'

	M_p4	ZNBAR	B	h0	VDD		pmos	L=Lp	W='2*Wp'
	M_n4	ZNBAR	B	h1	VSS		nmos	L=Ln	W='1*Wn'

	M_p5	h0		ZN	VDD	VDD		pmos	L=Lp	W='2*Wp'
	M_n5	h1		ZN	VSS	VSS		nmos	L=Ln	W='1*Wn'

	
	X_not1		ZNBAR	ZN 		VDD VSS	Wp	Lp	Wn	Ln		INV_X1
	***X_not2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
	
	***M_nreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wn'
	***M_preset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wp'
	
.ENDS
*************************************************
.SUBCKT	CGate2_neg	ZN	ZNBAR	A_neg	B	aset VDD	VSS	Wp	Lp	Wn	Ln		
    
    M_n1  ZNBAR  B  VSS  VSS  nmos  L='2*Ln'  W='2*Wn'
    
    M_p1  ZNBAR  B      p1   VDD  pmos  L='2*Lp'	W='4*Wp'
    M_p2  p1     A_neg  VDD  VDD  pmos  L='2*Lp'	W='4*Wp'
    
    M_n2  hn  A_neg  VSS  VSS  nmos  L='2*Ln'	W='2*Wn'
    M_n3  hn  B      VSS  VSS  nmos  L='2*Ln'	W='2*Wn'
    
    M_p3  hp  B  VDD  VDD  pmos  L='2*Lp'	W='4*Wp'
    
    M_p4  ZNBAR  ZN  hp  VDD  pmos  L='2*Lp'	W='4*Wp'
    M_n4  ZNBAR  ZN  hn  VSS  nmos  L='2*Ln'	W='2*Wn'
    
    
    
    M_p5  ZN  ZNBAR  VDD  VDD  pmos  L='1*Lp'		W='2*Wp'
    M_n5  ZN  ZNBAR  VSS  VSS  nmos  L='1*Ln'		W= '2*Wn'
    ***Xnot1		ZNBAR	ZN 		VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mp112		asetbar		aset		VDD		VDD		pmos		L='1*Lp'		W='2*Wp'
    ***Mn112		asetbar		aset		VSS		VSS		nmos		L='1*Ln'		W= '2*Wn'
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L='2*Ln'	W='4*Wn'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L='2*Lp'	W='16*Wp'
    
.ENDS
*************************************************
.SUBCKT	CGate2_pos	ZN	ZNBAR	A_pos	B	aset VDD	VSS	Wp	Lp	Wn	Ln	

    M_p1  ZNBAR  B  VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    M_n1  ZNBAR  B      n1   VSS  nmos  L=Ln	W='2*Wn'
    M_n2  n1     A_pos  VSS  VSS  nmos  L=Ln	W='2*Wn'
    
    M_p2  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='4*Wp'
    M_n3  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='2*Wn'
    
    M_p3  hp  A_pos  VDD  VDD  pmos  L=Lp	W='4*Wp'
    M_p4  hp  B      VDD  VDD  pmos  L=Lp	W='4*Wp'
    
    M_n4  hn  B  VSS  VSS  nmos  L=Ln	W='2*Wn'
    
    X_not1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wn'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wp'

.ENDS
*************************************************
.SUBCKT	CGate3_pos_neg  ZN  ZNBAR  A_pos  B  C_neg  aset  VDD  VSS  Wp  Lp  Wn  Ln  

    M_p1  ZNBAR  B      p1   VDD  pmos  L=Lp	W='2*Wp'
    M_p2  p1     C_neg  VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    M_n1  ZNBAR  B      n1   VSS  nmos  L=Ln	W='1*Wn'
    M_n2  n1     A_pos  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p3  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='2*Wp'
    M_n3  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p4  hp  B      VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p5  hp  A_pos  VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    M_n4  hn  B      VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n5  hn  C_neg  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    Xnot1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wp'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wn'
    
.ENDS
*************************************************
.SUBCKT	CGate3_pos2  ZN  ZNBAR  A_pos  B_pos  C  aset  VDD  VSS  Wp  Lp  Wn  Ln  

    M_p1  ZNBAR  C  VDD  VDD  pmos  L=Lp	W='2*Wp'
        
    M_n1  ZNBAR  C      n1   VSS  nmos  L=Ln	W='1*Wn'
    M_n2  n1     A_pos  n2   VSS  nmos  L=Ln	W='1*Wn'
    M_n3  n2     B_pos  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p2  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='2*Wp'
    M_n4  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p3  hp  A_pos  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p4  hp  B_pos  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p5  hp  C      VDD  VDD  pmos  L=Lp	W='2*Wp'

    M_n5  hn  C  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    Xnot1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wp'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wn'
    
.ENDS
*************************************************
.SUBCKT	CGate3_neg  ZN  ZNBAR  A_neg  B  C  aset  VDD  VSS  Wp  Lp  Wn  Ln

    M_n1  ZNBAR  B  n1   VSS  nmos  L=Ln	W='1*Wn'
    M_n2  n1     C  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p1  p1     A_neg  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p2  p2     B      p1   VDD  pmos  L=Lp	W='2*Wp'
    M_p3  ZNBAR  C      p2   VDD  pmos  L=Lp	W='2*Wp'
    
    M_p4  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='2*Wp'
    M_n4  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='1*Wn'
    
    M_n5  hn  A_neg  VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n6  hn  B      VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n7  hn  C      VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    
    M_p5  hp  B  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p6  hp  C  VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    Xnot1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wp'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wn'
    
.ENDS
*************************************************
.SUBCKT CGate3_pos  ZN  ZNBAR  A_pos  B  C  aset  VDD  VSS  Wp  Lp  Wn  Ln

    M_n1  ZNBAR  B      n2   VSS  nmos  L=Ln	W='1*Wn'
    M_n2  n2     C      n1   VSS  nmos  L=Ln	W='1*Wn'
    M_n3  n1     A_pos  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p1  p1     B      VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p2  ZNBAR  C      p1   VDD  pmos  L=Lp	W='2*Wp'
    
    M_p3  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='2*Wp'
    M_n4  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='1*Wn'
    
    M_n5  hn  B  VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n6  hn  C  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    
    M_p4  hp  A_pos  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p5  hp  B      VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p6  hp  C      VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    Xnot1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wp'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wn'
    
.ENDS
*************************************************
.SUBCKT	CGate4_pos_neg  ZN  ZNBAR  A_pos  B  C  D_neg  aset  VDD  VSS  Wp  Lp  Wn  Ln

    M_p1  ZNBAR  C      p2   VDD  pmos  L=Lp	W='2*Wp'
    M_p2  p2     B      p1   VDD  pmos  L=Lp	W='2*Wp'
    M_p3  p1     D_neg  VDD  VDD  pmos  L=Lp	W='2*Wp'
    
    M_n1  ZNBAR  C      n2   VSS  nmos  L=Ln	W='1*Wn'
    M_n2  n2     B      n1   VSS  nmos  L=Ln	W='1*Wn'
    M_n3  n1     A_pos  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p4  ZNBAR  ZN  hp  VDD  pmos  L=Lp	W='2*Wp'
    M_n4  ZNBAR  ZN  hn  VSS  nmos  L=Ln	W='1*Wn'
    
    M_p5  hp  A_pos  VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p6  hp  B      VDD  VDD  pmos  L=Lp	W='2*Wp'
    M_p7  hp  C      VDD  VDD  pmos  L=Lp	W='2*Wp'

    M_n5  hn  B      VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n6  hn  C      VSS  VSS  nmos  L=Ln	W='1*Wn'
    M_n7  hn  D_neg  VSS  VSS  nmos  L=Ln	W='1*Wn'
    
    Xnot1  ZNBAR  ZN  VDD  VSS  Wp  Lp  Wn  Ln  INV_X1
    ***Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1
    
    ***Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln	W='4*Wp'
    ***Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp	W='16*Wn'
    
.ENDS
*************************************************
.SUBCKT SRLatch Q	QB	 S	R  VDD VSS		Wp	Lp	Wn	Ln 
  
	XNOR2_X1_0 R QB Q VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1
	XNOR2_X1_1 S Q QB VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1
 
.ENDS
*************************************************
.SUBCKT		MUTEX G0 G1 R0 R1 aset VDD VSS		Wp	Lp	Wn	Ln

	Xnand0 	R0 	n1 	n0 	vdd vss		Wp	Lp	Wn	Ln	NAND2_X1
	MM0 	G1 	n1 	n0 	vdd 	pmos	L=Lp 	W='4*Wp' 	
	MM1 	G1 	n1 	vss	vss 	nmos	L=Ln 	W='2*Wn' 	
	
	Xnand1 	R1 n0 	n1 	vdd vss		Wp	Lp	Wn	Ln	NAND2_X1 
	MM2 	G0 n0 	n1  vdd 	pmos	L=Lp 	W='4*Wp' 	
	MM3 	G0 n0 	vss vss 	nmos	L=Ln 	W='2*Wn'
	
	MM4 G0 aset vss vss nmos  L=Ln	W='16*Wn'
	MM5 G1 aset vss vss nmos  L=Ln	W='16*Wn'

.ENDS		
*************************************************
.SUBCKT MUX2_X1 A B S Z VDD VSS		Wp	Lp	Wn	Ln
 
Mn0			VSS			S 			net_000 	VSS 	nmos 	L=Ln		W='2*Wn' 	
Mn7			net_001 	net_000 	VSS 		VSS 	nmos 	L=Ln		W='2*Wn' 	
Mn11		net_002 	A 			net_001 	VSS 	nmos 	L=Ln		W='2*Wn' 	
Mn17		net_003 	S 			net_002 	VSS 	nmos 	L=Ln		W='2*Wn' 	
Mn21		VSS 		B 			net_003 	VSS 	nmos 	L=Ln		W='2*Wn' 	
Mn27		Z 			net_002 	VSS 		VSS 	nmos 	L=Ln		W='1*Wn' 	
																	
Mp34		VDD 		S 			net_000 	VDD 	pmos 	L=Lp		W='2*Wp'  	
Mp41		net_004 	net_000 	VDD 		VDD 	pmos 	L=Lp		W='2*Wp' 	
Mp47		net_002 	S 			net_004 	VDD 	pmos 	L=Lp		W='2*Wp' 	
Mp53		net_004 	B 			net_002 	VDD 	pmos 	L=Lp		W='1.5*Wp' 	
Mp60		VDD 		A 			net_004 	VDD 	pmos 	L=Lp		W='2*Wp' 	
Mp67		Z 			net_002 	VDD 		VDD 	pmos 	L=Lp		W='1.5*Wp' 
	
.ENDS 
*************************************************
.SUBCKT PassTr out in cnt VDD VSS	Wp	Lp	Wn	Ln
	
	Mn0 out cnt  in vss nmos L=Ln	W='1*Wn'
	
	Mp1 out cntB in vdd pmos L=Lp	W='2*Wp'
	
	***Mn2 out cntB  vss vss nmos L=Ln	W='2*Wn'
	
	Xinv cnt cntB vdd vss	Wp	Lp	Wn	Ln INV_X1
	
.ENDS		
*************************************************
.SUBCKT	INV_X1W A ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mn1		ZN		A		VSS		VSS		nmos		L=Ln1		W= Wn1

.ENDS
*************************************************
.SUBCKT	NAND2_X1W A1 A2 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln1		W='2*Wn1'
	Mn2		n1		A2		VSS		VSS		nmos		L=Ln1		W='2*Wn1' 
	
.ENDS	
*************************************************
.SUBCKT	NAND3_X1W A1 A2 A3 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp3		ZN		A3		VDD		VDD		pmos		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln1		W='3*Wn1'
	Mn2		n1		A2		n2		VSS		nmos		L=Ln1		W='3*Wn1'
	Mn3		n2		A3		VSS		VSS		nmos		L=Ln1		W='3*Wn1'
	
.ENDS
*************************************************
.SUBCKT	NAND4_X1W A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp3		ZN		A3		VDD		VDD		pmos		L=Lp1		W='2*Wp1'
	Mp4		ZN		A4		VDD		VDD		pmos		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos		L=Ln1		W='4*Wn1'
	Mn2		n1		A2		n2		VSS		nmos		L=Ln1		W='4*Wn1'
	Mn3		n2		A3		n3		VSS		nmos		L=Ln1		W='4*Wn1'
	Mn4		n3		A4		VSS		VSS		nmos		L=Ln1		W='4*Wn1'	
		
.ENDS
*************************************************
.SUBCKT	NOR2_X1W A1 A2 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		p1		VDD		pmos		L=Lp1		W='4*Wp1'
	Mp2		p1		A2		VDD		VDD		pmos		L=Lp1		W='4*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	
.ENDS
*************************************************
.SUBCKT	NOR3_X1W A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		p1		p1		pmos		L=Lp1		W='6*Wp1'
	Mp2		p1		A2		p2		p2		pmos		L=Lp1		W='6*Wp1'
	Mp3		p2		A3		VDD		VDD		pmos		L=Lp1		W='6*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn3		ZN		A3		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
		
.ENDS
*************************************************
.SUBCKT	NOR4_X1W A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		p1		p1		pmos		L=Lp1		W='8*Wp1'
	Mp2		p1		A2		p2		p2		pmos		L=Lp1		W='8*Wp1'
	Mp3		p2		A3		p3		p3		pmos		L=Lp1		W='8*Wp1'
	Mp4		p3		A4		VDD		VDD		pmos		L=Lp1		W='8*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn3		ZN		A3		VSS		VSS		nmos		L=Ln1		W='1*Wn1'
	Mn4		ZN		A4		VSS		VSS		nmos		L=Ln1		W='1*Wn1'

.ENDS
*************************************************
.SUBCKT	AND2_X1W A1 A2 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnand2		A1 A2 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W

.ENDS
*************************************************
.SUBCKT	AND3_X1W A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand3		A1 A2 A3 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND3_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W

.ENDS
*************************************************
.SUBCKT	AND4_X1W A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand4		A1 A2 A3 A4 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND4_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W

.ENDS
*************************************************
.SUBCKT	OR2_X1W A1 A2 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnor2		A1 A2 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W

.ENDS
*************************************************
.SUBCKT	OR3_X1W A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnor3		A1 A2 A3 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR3_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	
.ENDS
*************************************************
.SUBCKT	OR4_X1W A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnor4		A1 A2 A3 A4 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR4_X1W
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
 
.ENDS
*************************************************
.SUBCKT	XOR2_X1W A B Z VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1 	1 	A		VDD		VDD 	pmos 	L=Lp1 	W='8*Wp1'
	Mp2 	Z	A_bar	1 		VDD 	pmos 	L=Lp1 	W='8*Wp1'
	Mp3 	1	B 		VDD 	VDD 	pmos 	L=Lp1 	W='8*Wp1'
	Mp4 	Z	B_bar 	1 		VDD 	pmos 	L=Lp1 	W='8*Wp1'
		
	Mn1 	Z 	A_bar 	2 		VSS 	nmos 	L=Ln1 	W='4*Wn1'
	Mn2 	2 	B_bar 	VSS 	VSS 	nmos 	L=Ln1 	W='4*Wn1'
	Mn3 	Z 	A 		3 		VSS 	nmos 	L=Ln1 	W='4*Wn1'
	Mn4 	3 	B 		VSS 	VSS 	nmos 	L=Ln1 	W='4*Wn1'

	Xnot1		A	A_bar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	Xnot2		B	B_bar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W

.ENDS
*************************************************
.SUBCKT	XNOR2_X1W A B ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xxor2		A B ou1	VDD	VSS		Wp1	Lp1	Wn1	Ln1		XOR2_X1W
	Xnot		ou1 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1		INV_X1W
	
.ENDS
*************************************************
.subckt Latch0W D G Q aset vdd vss	Wp1	Lp1	Wn1	Ln1

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W

Mnreset Q 	aset 	vss vss nmos	L=Ln1 	W='16*Wn1'

X_INV	D 	Dbar	vdd	vss	Wp1	Lp1	Wn1	Ln1	INV_X1W

.ends 
*************************************************
.subckt Latch1W D G Q aset vdd vss	Wp1	Lp1	Wn1	Ln1

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W


Mnreset Q 	asetbar 	vdd	vdd 	pmos			L=Lp1 	W='16*Wp1'

X_INV1		aset 	asetbar	vdd		vss	Wp1	Lp1	Wn1	Ln1	INV_X1W
X_INV2		D 		Dbar	vdd		vss	Wp1	Lp1	Wn1	Ln1	INV_X1W

.ends 
*************************************************
.SUBCKT	CGateW	ZN	ZNBAR 	A	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1

	Mp1	ZNBAR	A	p1	p1		pmos	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	A	n1	n1		nmos	L=Ln1	W='1*Wn1'

	Mp2	p1		B	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn2	n1		B	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	A	h0	h0		pmos	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	A	h1	h1		nmos	L=Ln1	W='1*Wn1'

	Mp4	ZNBAR	B	h0	h0		pmos	L=Lp1	W='2*Wp1'
	Mn4	ZNBAR	B	h1	h1		nmos	L=Ln1	W='1*Wn1'

	Mp5	h0		ZN	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn5	h1		ZN	VSS	VSS		nmos	L=Ln1	W='1*Wn1'
.ENDS
*************************************************
.SUBCKT	CGate_negW	ZN	ZNBAR	C	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1		

	Mp1	ZNBAR	C	p1	p1		pmos	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	C	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Mp2	p1		B	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	
	Mn2		h1		B	VSS	VSS		nmos	L=Ln1	W='1*Wn1'
	Mn21	h1		C	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos	L=Ln1	W='1*Wn1'

	Mp5	h0		C	VDD	VDD		pmos	L=Lp1	W='2*Wp1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	
	Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln1	W='4*Wn1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp1	W='16*Wp1'
	
.ENDS
*************************************************
.SUBCKT	CGate_posW	ZN	ZNBAR	A	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1	

	Mp1	ZNBAR	A	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	A	n1	n1		nmos	L=Ln1	W='2*Wn1'

	Mn2	n1		B	VSS	VSS		nmos	L=Ln1	W='2*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos	L=Lp1	W='4*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos	L=Ln1	W='2*Wn1'

	Mp4		ho	A	VDD	VDD		pmos	L=Lp1	W='4*Wp1'
	Mp41	ho	B	VDD	VDD		pmos	L=Lp1	W='4*Wp1'
	
	Mn4	h1	A	VSS	VSS		nmos	L=Ln1	W='2*Wn1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	
	Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln1	W='4*Wn1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp1	W='16*Wp1'
			
.ENDS
*************************************************
.SUBCKT	CGate_pos_negW	ZN	ZNBAR 	A	B	C	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1	

	Mp1	ZNBAR	B	p1	p1		pmos	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	B	n1	n1		nmos	L=Ln1	W='1*Wn1'

	Mp2	p1		C	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn2	n1		A	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos	L=Ln1	W='1*Wn1'

	Mp4	ho	B	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn4	h1	B	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Mp5	h0		A	VDD	VDD		pmos	L=Lp1	W='2*Wp1'
	Mn5	h1		C	VSS	VSS		nmos	L=Ln1	W='1*Wn1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W
	
	Mnreset	ZN		aset 	VSS	VSS		nmos	L=Ln1	W='4*Wp1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos	L=Lp1	W='16*Wn1'
	
.ENDS
*************************************************
.SUBCKT SRLatchW Q	QB	 S	R  VDD VSS		Wp1	Lp1	Wn1	Ln1 
  
	XNOR2_X1_0 R QB Q VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W
	XNOR2_X1_1 S Q QB VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W
 
.ENDS
*************************************************
.SUBCKT		MUTEXW G0 G1 R0 R1 aset VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand0 	R0 	n1 	n0 	vdd vss		Wp1	Lp1	Wn1	Ln1	NAND2_X1W
	MM0 	G1 	n1 	n0 	vdd 	pmos	L=Lp1 	W='4*Wp1' 	
	MM1 	G1 	n1 	vss	vss 	nmos	L=Ln1 	W='2*Wn1' 	
	
	Xnand1 	R1 n0 	n1 	vdd vss		Wp1	Lp1	Wn1	Ln1	NAND2_X1W 
	MM2 	G0 n0 	n1  vdd 	pmos	L=Lp1 	W='4*Wp1' 	
	MM3 	G0 n0 	vss vss 	nmos	L=Ln1 	W='2*Wn1'
	
	MM4 G0 aset vss vss nmos  L=Ln1	W='16*Wn1'
	MM5 G1 aset vss vss nmos  L=Ln1	W='16*Wn1'

.ENDS		
*************************************************
.SUBCKT MUX2_X1W A B S Z VDD VSS		Wp1	Lp1	Wn1	Ln1
 
Mn0			VSS			S 			net_000 	VSS 	nmos 	L=Ln1		W='2*Wn1' 	
Mn7			net_001 	net_000 	VSS 		VSS 	nmos 	L=Ln1		W='2*Wn1' 	
Mn11		net_002 	A 			net_001 	VSS 	nmos 	L=Ln1		W='2*Wn1' 	
Mn17		net_003 	S 			net_002 	VSS 	nmos 	L=Ln1		W='2*Wn1' 	
Mn21		VSS 		B 			net_003 	VSS 	nmos 	L=Ln1		W='2*Wn1' 	
Mn27		Z 			net_002 	VSS 		VSS 	nmos 	L=Ln1		W='1*Wn1' 	
																	
Mp34		VDD 		S 			net_000 	VDD 	pmos 	L=Lp1		W='2*Wp1'  	
Mp41		net_004 	net_000 	VDD 		VDD 	pmos 	L=Lp1		W='2*Wp1' 	
Mp47		net_002 	S 			net_004 	VDD 	pmos 	L=Lp1		W='2*Wp1' 	
Mp53		net_004 	B 			net_002 	VDD 	pmos 	L=Lp1		W='1.5*Wp1' 	
Mp60		VDD 		A 			net_004 	VDD 	pmos 	L=Lp1		W='2*Wp1' 	
Mp67		Z 			net_002 	VDD 		VDD 	pmos 	L=Lp1		W='1.5*Wp1' 
	
.ENDS 
*************************************************
.SUBCKT PassTrW out in cnt VDD VSS	Wp1	Lp1	Wn1	Ln1
	
	Mn0 out cnt  in vss nmos L=Ln1	W='1*Wn1'
	
	Mp1 out cntB in vdd pmos L=Lp1	W='2*Wp1'
	
	Mn2 out cntB  vss vss nmos L=Ln1	W='2*Wn1'
	
	Xinv cnt cntB vdd vss	Wp1	Lp1	Wn1	Ln1 INV_X1W
	
.ENDS		
*************************************************
*************************************************
*************************************************
*************************************************
*************************************************
*************************************************
.SUBCKT	INV_X1_lib A ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mn1		ZN		A		VSS		VSS		nmos_lib		L=Ln		W= Wn

.ENDS
*************************************************
.SUBCKT	NAND2_X1_lib A1 A2 ZN VDD VSS	Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln		W='2*Wn'
	Mn2		n1		A2		VSS		VSS		nmos_lib		L=Ln		W='2*Wn' 
	
.ENDS	
*************************************************
.SUBCKT	NAND3_X1_lib A1 A2 A3 ZN VDD VSS	Wp	Lp	Wn	Ln

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp3		ZN		A3		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln		W='3*Wn'
	Mn2		n1		A2		n2		VSS		nmos_lib		L=Ln		W='3*Wn'
	Mn3		n2		A3		VSS		VSS		nmos_lib		L=Ln		W='3*Wn'
	
.ENDS
*************************************************
.SUBCKT	NAND4_X1_lib A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp3		ZN		A3		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'
	Mp4		ZN		A4		VDD		VDD		pmos_lib		L=Lp		W='2*Wp'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln		W='4*Wn'
	Mn2		n1		A2		n2		VSS		nmos_lib		L=Ln		W='4*Wn'
	Mn3		n2		A3		n3		VSS		nmos_lib		L=Ln		W='4*Wn'
	Mn4		n3		A4		VSS		VSS		nmos_lib		L=Ln		W='4*Wn'	
		
.ENDS
*************************************************
.SUBCKT	NOR2_X1_lib A1 A2 ZN VDD VSS	Wp	Lp	Wn	Ln

	Mp1		ZN		A1		p1		VDD		pmos_lib		L=Lp		W='4*Wp'
	Mp2		p1		A2		VDD		VDD		pmos_lib		L=Lp		W='4*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	
.ENDS
*************************************************
.SUBCKT	NOR3_X1_lib A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Mp1		ZN		A1		p1		p1		pmos_lib		L=Lp		W='6*Wp'
	Mp2		p1		A2		p2		p2		pmos_lib		L=Lp		W='6*Wp'
	Mp3		p2		A3		VDD		VDD		pmos_lib		L=Lp		W='6*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn3		ZN		A3		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
		
.ENDS
*************************************************
.SUBCKT	NOR4_X1_lib A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln

	Mp1		ZN		A1		p1		p1		pmos_lib		L=Lp		W='8*Wp'
	Mp2		p1		A2		p2		p2		pmos_lib		L=Lp		W='8*Wp'
	Mp3		p2		A3		p3		p3		pmos_lib		L=Lp		W='8*Wp'
	Mp4		p3		A4		VDD		VDD		pmos_lib		L=Lp		W='8*Wp'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn3		ZN		A3		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'
	Mn4		ZN		A4		VSS		VSS		nmos_lib		L=Ln		W='1*Wn'

.ENDS
*************************************************
.SUBCKT	AND2_X1_lib A1 A2 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnand2		A1 A2 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND2_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib

.ENDS
*************************************************
.SUBCKT	AND3_X1_lib A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnand3		A1 A2 A3 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND3_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib

.ENDS
*************************************************
.SUBCKT	AND4_X1_lib A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnand4		A1 A2 A3 A4 ou1 VDD VSS	Wp	Lp	Wn	Ln	NAND4_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib

.ENDS
*************************************************
.SUBCKT	OR2_X1_lib A1 A2 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnor2		A1 A2 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib

.ENDS
*************************************************
.SUBCKT	OR3_X1_lib A1 A2 A3 ZN VDD VSS		Wp	Lp	Wn	Ln

	Xnor3		A1 A2 A3 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR3_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	
.ENDS
*************************************************
.SUBCKT	OR4_X1_lib A1 A2 A3 A4 ZN VDD VSS		Wp	Lp	Wn	Ln 

	Xnor4		A1 A2 A3 A4 ou1 VDD VSS	Wp	Lp	Wn	Ln	NOR4_X1_lib
	Xnot		ou1 ZN VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
 
.ENDS
*************************************************
.SUBCKT	XOR2_X1_lib A B Z VDD VSS		Wp	Lp	Wn	Ln

	Mp1 	1 	A		VDD		VDD 	pmos_lib 	L=Lp 	W='8*Wp'
	Mp2 	Z	A_bar	1 		VDD 	pmos_lib 	L=Lp 	W='8*Wp'
	Mp3 	1	B 		VDD 	VDD 	pmos_lib 	L=Lp 	W='8*Wp'
	Mp4 	Z	B_bar 	1 		VDD 	pmos_lib 	L=Lp 	W='8*Wp'
		
	Mn1 	Z 	A_bar 	2 		VSS 	nmos_lib 	L=Ln 	W='4*Wn'
	Mn2 	2 	B_bar 	VSS 	VSS 	nmos_lib 	L=Ln 	W='4*Wn'
	Mn3 	Z 	A 		3 		VSS 	nmos_lib 	L=Ln 	W='4*Wn'
	Mn4 	3 	B 		VSS 	VSS 	nmos_lib 	L=Ln 	W='4*Wn'

	Xnot1		A	A_bar VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	Xnot2		B	B_bar VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib

.ENDS
*************************************************
.SUBCKT	XNOR2_X1_lib A B ZN VDD VSS		Wp	Lp	Wn	Ln

	Xxor2		A B ou1	VDD	VSS		Wp	Lp	Wn	Ln		XOR2_X1_lib
	Xnot		ou1 ZN VDD VSS		Wp	Lp	Wn	Ln		INV_X1_lib
	
.ENDS
*************************************************
.subckt Latch0_lib D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib

Mnreset Q 	aset 	vss vss nmos_lib	L=Ln 	W='16*Wn'

X_INV	D 	Dbar	vdd	vss	Wp	Lp	Wn	Ln	INV_X1_lib

.ends 
*************************************************
.subckt Latch1_lib D G Q aset vdd vss	Wp	Lp	Wn	Ln

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp	Lp	Wn	Ln	NAND2_X1_lib


Mnreset Q 	asetbar 	vdd	vdd 	pmos_lib			L=Lp 	W='16*Wp'

X_INV1		aset 	asetbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1_lib
X_INV2		D 		Dbar	vdd		vss	Wp	Lp	Wn	Ln	INV_X1_lib

.ends 
*************************************************
.SUBCKT	CGate_lib	ZN	ZNBAR 	A	B	aset VDD	VSS	Wp	Lp	Wn	Ln		

	Mp1	ZNBAR	A	p1	p1		pmos_lib	L=Lp	W='2*Wp'
	Mn1	ZNBAR	A	n1	n1		nmos_lib	L=Ln	W='1*Wn'

	Mp2	p1		B	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn2	n1		B	VSS	VSS		nmos_lib	L=Ln	W='1*Wn'

	Mp3	ZNBAR	A	h0	h0		pmos_lib	L=Lp	W='2*Wp'
	Mn3	ZNBAR	A	h1	h1		nmos_lib	L=Ln	W='1*Wn'

	Mp4	ZNBAR	B	h0	h0		pmos_lib	L=Lp	W='2*Wp'
	Mn4	ZNBAR	B	h1	h1		nmos_lib	L=Ln	W='1*Wn'

	Mp5	h0		ZN	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn5	h1		ZN	VSS	VSS		nmos_lib	L=Ln	W='1*Wn'

	
	Xnot1		ZNBAR	ZN 		VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln	W='4*Wn'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp	W='16*Wp'
	
.ENDS

*************************************************
.SUBCKT	CGate_pos_lib	ZN	ZNBAR	A	B	aset VDD	VSS	Wp	Lp	Wn	Ln	

	Mp1	ZNBAR	A	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn1	ZNBAR	A	n1	n1		nmos_lib	L=Ln	W='2*Wn'

	Mn2	n1		B	VSS	VSS		nmos_lib	L=Ln	W='2*Wn'

	Mp3	ZNBAR	ZN	h0	h0		pmos_lib	L=Lp	W='4*Wp'
	Mn3	ZNBAR	ZN	h1	h1		nmos_lib	L=Ln	W='2*Wn'

	Mp4		ho	A	VDD	VDD		pmos_lib	L=Lp	W='4*Wp'
	Mp41	ho	B	VDD	VDD		pmos_lib	L=Lp	W='4*Wp'
	
	Mn4	h1	A	VSS	VSS		nmos_lib	L=Ln	W='2*Wn'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln	W='4*Wn'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp	W='16*Wp'
			
.ENDS
*************************************************
.SUBCKT	CGate_pos_neg_lib	ZN	ZNBAR 	A	B	C	aset VDD	VSS	Wp	Lp	Wn	Ln	

	Mp1	ZNBAR	B	p1	p1		pmos_lib	L=Lp	W='2*Wp'
	Mn1	ZNBAR	B	n1	n1		nmos_lib	L=Ln	W='1*Wn'

	Mp2	p1		C	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn2	n1		A	VSS	VSS		nmos_lib	L=Ln	W='1*Wn'

	Mp3	ZNBAR	ZN	h0	h0		pmos_lib	L=Lp	W='2*Wp'
	Mn3	ZNBAR	ZN	h1	h1		nmos_lib	L=Ln	W='1*Wn'

	Mp4	ho	B	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn4	h1	B	VSS	VSS		nmos_lib	L=Ln	W='1*Wn'

	Mp5	h0		A	VDD	VDD		pmos_lib	L=Lp	W='2*Wp'
	Mn5	h1		C	VSS	VSS		nmos_lib	L=Ln	W='1*Wn'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	Xnot2		aset	asetbar VDD VSS	Wp	Lp	Wn	Ln		INV_X1_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln	W='4*Wp'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp	W='16*Wn'
	
.ENDS
*************************************************
.SUBCKT SRLatch_lib Q	QB	 S	R  VDD VSS		Wp	Lp	Wn	Ln 
  
	XNOR2_X1_0 R QB Q VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1_lib
	XNOR2_X1_1 S Q QB VDD VSS	Wp	Lp	Wn	Ln	NOR2_X1_lib
 
.ENDS
*************************************************
.SUBCKT		MUTEX_lib G0 G1 R0 R1 aset VDD VSS		Wp	Lp	Wn	Ln

	Xnand0 	R0 	n1 	n0 	vdd vss		Wp	Lp	Wn	Ln	NAND2_X1_lib
	MM0 	G1 	n1 	n0 	vdd 	pmos_lib	L=Lp 	W='4*Wp' 	
	MM1 	G1 	n1 	vss	vss 	nmos_lib	L=Ln 	W='2*Wn' 	
	
	Xnand1 	R1 n0 	n1 	vdd vss		Wp	Lp	Wn	Ln	NAND2_X1_lib 
	MM2 	G0 n0 	n1  vdd 	pmos_lib	L=Lp 	W='4*Wp' 	
	MM3 	G0 n0 	vss vss 	nmos_lib	L=Ln 	W='2*Wn'
	
	MM4 G0 aset vss vss nmos_lib  L=Ln	W='16*Wn'
	MM5 G1 aset vss vss nmos_lib  L=Ln	W='16*Wn'

.ENDS		
*************************************************
.SUBCKT MUX2_X1_lib A B S Z VDD VSS		Wp	Lp	Wn	Ln
 
Mn0			VSS			S 			net_000 	VSS 	nmos_lib 	L=Ln		W='2*Wn' 	
Mn7			net_001 	net_000 	VSS 		VSS 	nmos_lib 	L=Ln		W='2*Wn' 	
Mn11		net_002 	A 			net_001 	VSS 	nmos_lib 	L=Ln		W='2*Wn' 	
Mn17		net_003 	S 			net_002 	VSS 	nmos_lib 	L=Ln		W='2*Wn' 	
Mn21		VSS 		B 			net_003 	VSS 	nmos_lib 	L=Ln		W='2*Wn' 	
Mn27		Z 			net_002 	VSS 		VSS 	nmos_lib 	L=Ln		W='1*Wn' 	
																	
Mp34		VDD 		S 			net_000 	VDD 	pmos_lib 	L=Lp		W='2*Wp'  	
Mp41		net_004 	net_000 	VDD 		VDD 	pmos_lib 	L=Lp		W='2*Wp' 	
Mp47		net_002 	S 			net_004 	VDD 	pmos_lib 	L=Lp		W='2*Wp' 	
Mp53		net_004 	B 			net_002 	VDD 	pmos_lib 	L=Lp		W='1.5*Wp' 	
Mp60		VDD 		A 			net_004 	VDD 	pmos_lib 	L=Lp		W='2*Wp' 	
Mp67		Z 			net_002 	VDD 		VDD 	pmos_lib 	L=Lp		W='1.5*Wp' 
	
.ENDS 
*************************************************
.SUBCKT PassTr_lib out in cnt VDD VSS	Wp	Lp	Wn	Ln
	
	Mn0 out cnt  in vss nmos_lib L=Ln	W='1*Wn'
	
	Mp1 out cntB in vdd pmos_lib L=Lp	W='2*Wp'
	
	Mn2 out cntB  vss vss nmos_lib L=Ln	W='2*Wn'
	
	Xinv cnt cntB vdd vss	Wp	Lp	Wn	Ln INV_X1_lib
	
.ENDS		
*************************************************
.SUBCKT	INV_X1W_lib A ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mn1		ZN		A		VSS		VSS		nmos_lib		L=Ln1		W= Wn1

.ENDS
*************************************************
.SUBCKT	NAND2_X1W_lib A1 A2 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln1		W='2*Wn1'
	Mn2		n1		A2		VSS		VSS		nmos_lib		L=Ln1		W='2*Wn1' 
	
.ENDS	
*************************************************
.SUBCKT	NAND3_X1W_lib A1 A2 A3 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp3		ZN		A3		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln1		W='3*Wn1'
	Mn2		n1		A2		n2		VSS		nmos_lib		L=Ln1		W='3*Wn1'
	Mn3		n2		A3		VSS		VSS		nmos_lib		L=Ln1		W='3*Wn1'
	
.ENDS
*************************************************
.SUBCKT	NAND4_X1W_lib A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp2		ZN		A2		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp3		ZN		A3		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'
	Mp4		ZN		A4		VDD		VDD		pmos_lib		L=Lp1		W='2*Wp1'

	Mn1		ZN		A1		n1		VSS		nmos_lib		L=Ln1		W='4*Wn1'
	Mn2		n1		A2		n2		VSS		nmos_lib		L=Ln1		W='4*Wn1'
	Mn3		n2		A3		n3		VSS		nmos_lib		L=Ln1		W='4*Wn1'
	Mn4		n3		A4		VSS		VSS		nmos_lib		L=Ln1		W='4*Wn1'	
		
.ENDS
*************************************************
.SUBCKT	NOR2_X1W_lib A1 A2 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		p1		VDD		pmos_lib		L=Lp1		W='4*Wp1'
	Mp2		p1		A2		VDD		VDD		pmos_lib		L=Lp1		W='4*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	
.ENDS
*************************************************
.SUBCKT	NOR3_X1W_lib A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Mp1		ZN		A1		p1		p1		pmos_lib		L=Lp1		W='6*Wp1'
	Mp2		p1		A2		p2		p2		pmos_lib		L=Lp1		W='6*Wp1'
	Mp3		p2		A3		VDD		VDD		pmos_lib		L=Lp1		W='6*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn3		ZN		A3		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
		
.ENDS
*************************************************
.SUBCKT	NOR4_X1W_lib A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1		ZN		A1		p1		p1		pmos_lib		L=Lp1		W='8*Wp1'
	Mp2		p1		A2		p2		p2		pmos_lib		L=Lp1		W='8*Wp1'
	Mp3		p2		A3		p3		p3		pmos_lib		L=Lp1		W='8*Wp1'
	Mp4		p3		A4		VDD		VDD		pmos_lib		L=Lp1		W='8*Wp1'

	Mn1		ZN		A1		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn2		ZN		A2		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn3		ZN		A3		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'
	Mn4		ZN		A4		VSS		VSS		nmos_lib		L=Ln1		W='1*Wn1'

.ENDS
*************************************************
.SUBCKT	AND2_X1W_lib A1 A2 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnand2		A1 A2 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib

.ENDS
*************************************************
.SUBCKT	AND3_X1W_lib A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand3		A1 A2 A3 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND3_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib

.ENDS
*************************************************
.SUBCKT	AND4_X1W_lib A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand4		A1 A2 A3 A4 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NAND4_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib

.ENDS
*************************************************
.SUBCKT	OR2_X1W_lib A1 A2 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnor2		A1 A2 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib

.ENDS
*************************************************
.SUBCKT	OR3_X1W_lib A1 A2 A3 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnor3		A1 A2 A3 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR3_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	
.ENDS
*************************************************
.SUBCKT	OR4_X1W_lib A1 A2 A3 A4 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1 

	Xnor4		A1 A2 A3 A4 ou1 VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR4_X1W_lib
	Xnot		ou1 ZN VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
 
.ENDS
*************************************************
.SUBCKT	XOR2_X1W_lib A B Z VDD VSS		Wp1	Lp1	Wn1	Ln1

	Mp1 	1 	A		VDD		VDD 	pmos_lib 	L=Lp1 	W='8*Wp1'
	Mp2 	Z	A_bar	1 		VDD 	pmos_lib 	L=Lp1 	W='8*Wp1'
	Mp3 	1	B 		VDD 	VDD 	pmos_lib 	L=Lp1 	W='8*Wp1'
	Mp4 	Z	B_bar 	1 		VDD 	pmos_lib 	L=Lp1 	W='8*Wp1'
		
	Mn1 	Z 	A_bar 	2 		VSS 	nmos_lib 	L=Ln1 	W='4*Wn1'
	Mn2 	2 	B_bar 	VSS 	VSS 	nmos_lib 	L=Ln1 	W='4*Wn1'
	Mn3 	Z 	A 		3 		VSS 	nmos_lib 	L=Ln1 	W='4*Wn1'
	Mn4 	3 	B 		VSS 	VSS 	nmos_lib 	L=Ln1 	W='4*Wn1'

	Xnot1		A	A_bar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	Xnot2		B	B_bar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib

.ENDS
*************************************************
.SUBCKT	XNOR2_X1W_lib A B ZN VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xxor2		A B ou1	VDD	VSS		Wp1	Lp1	Wn1	Ln1		XOR2_X1W_lib
	Xnot		ou1 ZN VDD VSS		Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	
.ENDS
*************************************************
.subckt Latch0W_lib D G Q aset vdd vss	Wp1	Lp1	Wn1	Ln1

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib

Mnreset Q 	aset 	vss vss nmos_lib	L=Ln1 	W='16*Wn1'

X_INV	D 	Dbar	vdd	vss	Wp1	Lp1	Wn1	Ln1	INV_X1W_lib

.ends 
*************************************************
.subckt Latch1W_lib D G Q aset vdd vss	Wp1	Lp1	Wn1	Ln1

XNAND2_X1 D    		G 		TmpD 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X2 Dbar 		G 		TmpDbar 	vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X3 TmpD 		Qbar 	Q 			vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
XNAND2_X4 TmpDbar 	Q 		Qbar 		vdd vss	Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib


Mnreset Q 	asetbar 	vdd	vdd 	pmos_lib			L=Lp1 	W='16*Wp1'

X_INV1		aset 	asetbar	vdd		vss	Wp1	Lp1	Wn1	Ln1	INV_X1W_lib
X_INV2		D 		Dbar	vdd		vss	Wp1	Lp1	Wn1	Ln1	INV_X1W_lib

.ends 
*************************************************
.SUBCKT	CGateW_lib	ZN	ZNBAR 	A	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1

	Mp1	ZNBAR	A	p1	p1		pmos_lib	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	A	n1	n1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp2	p1		B	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn2	n1		B	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	A	h0	h0		pmos_lib	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	A	h1	h1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp4	ZNBAR	B	h0	h0		pmos_lib	L=Lp1	W='2*Wp1'
	Mn4	ZNBAR	B	h1	h1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp5	h0		ZN	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn5	h1		ZN	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'
.ENDS
*************************************************
.SUBCKT	CGate_negW_lib	ZN	ZNBAR	C	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1		

	Mp1	ZNBAR	C	p1	p1		pmos_lib	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	C	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Mp2	p1		B	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	
	Mn2		h1		B	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'
	Mn21	h1		C	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos_lib	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp5	h0		C	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln1	W='4*Wn1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp1	W='16*Wp1'
	
.ENDS
*************************************************
.SUBCKT	CGate_posW_lib	ZN	ZNBAR	A	B	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1	

	Mp1	ZNBAR	A	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	A	n1	n1		nmos_lib	L=Ln1	W='2*Wn1'

	Mn2	n1		B	VSS	VSS		nmos_lib	L=Ln1	W='2*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos_lib	L=Lp1	W='4*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos_lib	L=Ln1	W='2*Wn1'

	Mp4		ho	A	VDD	VDD		pmos_lib	L=Lp1	W='4*Wp1'
	Mp41	ho	B	VDD	VDD		pmos_lib	L=Lp1	W='4*Wp1'
	
	Mn4	h1	A	VSS	VSS		nmos_lib	L=Ln1	W='2*Wn1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln1	W='4*Wn1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp1	W='16*Wp1'
			
.ENDS
*************************************************
.SUBCKT	CGate_pos_negW_lib	ZN	ZNBAR 	A	B	C	aset VDD	VSS	Wp1	Lp1	Wn1	Ln1	

	Mp1	ZNBAR	B	p1	p1		pmos_lib	L=Lp1	W='2*Wp1'
	Mn1	ZNBAR	B	n1	n1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp2	p1		C	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn2	n1		A	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Mp3	ZNBAR	ZN	h0	h0		pmos_lib	L=Lp1	W='2*Wp1'
	Mn3	ZNBAR	ZN	h1	h1		nmos_lib	L=Ln1	W='1*Wn1'

	Mp4	ho	B	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn4	h1	B	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Mp5	h0		A	VDD	VDD		pmos_lib	L=Lp1	W='2*Wp1'
	Mn5	h1		C	VSS	VSS		nmos_lib	L=Ln1	W='1*Wn1'

	Xnot1		ZNBAR	ZN 		VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	Xnot2		aset	asetbar VDD VSS	Wp1	Lp1	Wn1	Ln1		INV_X1W_lib
	
	Mnreset	ZN		aset 	VSS	VSS		nmos_lib	L=Ln1	W='4*Wp1'
	Mpreset	ZNBAR	asetbar VDD	VDD		pmos_lib	L=Lp1	W='16*Wn1'
	
.ENDS
*************************************************
.SUBCKT SRLatchW_lib Q	QB	 S	R  VDD VSS		Wp1	Lp1	Wn1	Ln1 
  
	XNOR2_X1_0 R QB Q VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W_lib
	XNOR2_X1_1 S Q QB VDD VSS	Wp1	Lp1	Wn1	Ln1	NOR2_X1W_lib
 
.ENDS
*************************************************
.SUBCKT		MUTEXW_lib G0 G1 R0 R1 aset VDD VSS		Wp1	Lp1	Wn1	Ln1

	Xnand0 	R0 	n1 	n0 	vdd vss		Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib
	MM0 	G1 	n1 	n0 	vdd 	pmos_lib	L=Lp1 	W='4*Wp1' 	
	MM1 	G1 	n1 	vss	vss 	nmos_lib	L=Ln1 	W='2*Wn1' 	
	
	Xnand1 	R1 n0 	n1 	vdd vss		Wp1	Lp1	Wn1	Ln1	NAND2_X1W_lib 
	MM2 	G0 n0 	n1  vdd 	pmos_lib	L=Lp1 	W='4*Wp1' 	
	MM3 	G0 n0 	vss vss 	nmos_lib	L=Ln1 	W='2*Wn1'
	
	MM4 G0 aset vss vss nmos_lib  L=Ln1	W='16*Wn1'
	MM5 G1 aset vss vss nmos_lib  L=Ln1	W='16*Wn1'

.ENDS		
*************************************************
.SUBCKT MUX2_X1W_lib A B S Z VDD VSS		Wp1	Lp1	Wn1	Ln1
 
Mn0			VSS			S 			net_000 	VSS 	nmos_lib 	L=Ln1		W='2*Wn1' 	
Mn7			net_001 	net_000 	VSS 		VSS 	nmos_lib 	L=Ln1		W='2*Wn1' 	
Mn11		net_002 	A 			net_001 	VSS 	nmos_lib 	L=Ln1		W='2*Wn1' 	
Mn17		net_003 	S 			net_002 	VSS 	nmos_lib 	L=Ln1		W='2*Wn1' 	
Mn21		VSS 		B 			net_003 	VSS 	nmos_lib 	L=Ln1		W='2*Wn1' 	
Mn27		Z 			net_002 	VSS 		VSS 	nmos_lib 	L=Ln1		W='1*Wn1' 	
																	
Mp34		VDD 		S 			net_000 	VDD 	pmos_lib 	L=Lp1		W='2*Wp1'  	
Mp41		net_004 	net_000 	VDD 		VDD 	pmos_lib 	L=Lp1		W='2*Wp1' 	
Mp47		net_002 	S 			net_004 	VDD 	pmos_lib 	L=Lp1		W='2*Wp1' 	
Mp53		net_004 	B 			net_002 	VDD 	pmos_lib 	L=Lp1		W='1.5*Wp1' 	
Mp60		VDD 		A 			net_004 	VDD 	pmos_lib 	L=Lp1		W='2*Wp1' 	
Mp67		Z 			net_002 	VDD 		VDD 	pmos_lib 	L=Lp1		W='1.5*Wp1' 
	
.ENDS 
*************************************************
.SUBCKT PassTrW_lib out in cnt VDD VSS	Wp1	Lp1	Wn1	Ln1
	
	Mn0 out cnt  in vss nmos_lib L=Ln1	W='1*Wn1'
	
	Mp1 out cntB in vdd pmos_lib L=Lp1	W='2*Wp1'
	
	Mn2 out cntB  vss vss nmos_lib L=Ln1	W='2*Wn1'
	
	Xinv cnt cntB vdd vss	Wp1	Lp1	Wn1	Ln1 INV_X1W_lib
	
.ENDS		
*************************************************