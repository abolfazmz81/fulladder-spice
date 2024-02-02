.subckt full_adder_1 A B Cin S Cout vdd vss 		wp lp wn ln
	xor1 A B x1 vdd vss wp lp wn ln XOR2_X1
	xor2 x1 Cin S vdd vss wp lp wn ln XOR2_X1

	and1 A B A1 vdd vss wp lp wn ln AND2_X1
	and2 x1 cin A2 vdd vss wp lp wn ln AND2_X1 
	or1 A1 A2 Cout vdd vss wp lp wn ln OR2_X1 

.ends