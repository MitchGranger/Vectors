// Verilog netlist created by S-Edit 2018.3.1
// Written on Fri Apr 23 14:53:20 2021

// Library:               TeamG_Schematic
// Cell:                  TEAMG_DESIGN
// View name:             schematic1
// Design path:           \\filestore.soton.ac.uk\users\mlh1g19\mydocuments\Year2\ElectronicDesign\D2_Practice\D2_S-Edit-main\S-Edit\TeamG_Schematic
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module TEAMG_Circuit2Osc(
	A2,
	OutSig
);
input A2;
output OutSig;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;

INV1 INV1_1(
	.A(N_6),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_1),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_2),
	.Q(N_3)
);
INV1 INV1_4(
	.A(N_3),
	.Q(N_4)
);
INV1 INV1_5(
	.A(N_4),
	.Q(N_5)
);
INV1 INV1_6(
	.A(N_5),
	.Q(OutSig)
);
NAND2 NAND2_1(
	.A(A2),
	.B(OutSig),
	.Q(N_6)
);
endmodule // TEAMG_Circuit2Osc


module TEAMG_Circuit2Divider(
	A1,
	InSig,
	Q1
);
input A1;
input InSig;
output Q1;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;

DFFR DFFR_1(
	.Clk(InSig),
	.D(N_1),
	.Q(N_19),
	.nQ(N_1),
	.nRst(N_12)
);
DFFR DFFR_2(
	.Clk(N_1),
	.D(N_3),
	.Q(N_2),
	.nQ(N_3),
	.nRst(N_12)
);
DFFR DFFR_3(
	.Clk(N_3),
	.D(N_4),
	.Q(N_20),
	.nQ(N_4),
	.nRst(N_12)
);
DFFR DFFR_4(
	.Clk(N_4),
	.D(N_5),
	.Q(N_21),
	.nQ(N_5),
	.nRst(N_12)
);
DFFR DFFR_5(
	.Clk(N_5),
	.D(N_6),
	.Q(N_24),
	.nQ(N_6),
	.nRst(N_12)
);
DFFR DFFR_6(
	.Clk(N_6),
	.D(N_7),
	.Q(N_25),
	.nQ(N_7),
	.nRst(N_12)
);
DFFR DFFR_7(
	.Clk(N_7),
	.D(N_9),
	.Q(N_8),
	.nQ(N_9),
	.nRst(N_12)
);
DFFR DFFR_8(
	.Clk(N_9),
	.D(N_10),
	.Q(N_26),
	.nQ(N_10),
	.nRst(N_12)
);
DFFR DFFR_9(
	.Clk(N_10),
	.D(N_17),
	.Q(N_11),
	.nQ(N_17),
	.nRst(N_12)
);
DFFR DFFR_10(
	.Clk(N_13),
	.D(N_14),
	.Q(Q1),
	.nQ(N_14),
	.nRst(A1)
);
INV1 INV1_1(
	.A(N_18),
	.Q(N_13)
);
INV1 INV1_2(
	.A(N_22),
	.Q(N_15)
);
INV1 INV1_3(
	.A(A1),
	.Q(N_23)
);
NAND3 NAND3_1(
	.A(N_15),
	.B(N_16),
	.C(N_17),
	.Q(N_18)
);
NAND4 NAND4_1(
	.A(N_19),
	.B(N_3),
	.C(N_20),
	.D(N_21),
	.Q(N_22)
);
NOR2 NOR2_1(
	.A(N_13),
	.B(N_23),
	.Q(N_12)
);
NOR4 NOR4_1(
	.A(N_24),
	.B(N_25),
	.C(N_9),
	.D(N_26),
	.Q(N_16)
);
endmodule // TEAMG_Circuit2Divider


module TEAMG_Circuit2(
	EnableOsc,
	OscOut,
	nReset
);
input EnableOsc;
output OscOut;
input nReset;

wire N_1;

TEAMG_Circuit2Divider TEAMG_Circuit2Divider_1(
	.A1(nReset),
	.InSig(N_1),
	.Q1(OscOut)
);
TEAMG_Circuit2Osc TEAMG_Circuit2Osc_1(
	.A2(EnableOsc),
	.OutSig(N_1)
);
endmodule // TEAMG_Circuit2


module TEAMG_Circuit3(
	ClockSeq,
	DataIn,
	MatchAll,
	nResetSeq
);
input ClockSeq;
input DataIn;
output MatchAll;
input nResetSeq;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire NotDataIn;
wire NotQ0;
wire NotQ1;
wire NotQ2;
wire NotQ3;
wire Q0;
wire Q1;
wire Q2;
wire Q3;
wire nextQ0;
wire nextQ1;
wire nextQ2;
wire nextQ3;

DFFR DFFR_1(
	.Clk(ClockSeq),
	.D(nextQ0),
	.Q(Q0),
	.nQ(NotQ0),
	.nRst(nResetSeq)
);
DFFR DFFR_2(
	.Clk(ClockSeq),
	.D(nextQ1),
	.Q(Q1),
	.nQ(NotQ1),
	.nRst(nResetSeq)
);
DFFR DFFR_3(
	.Clk(ClockSeq),
	.D(nextQ2),
	.Q(Q2),
	.nQ(NotQ2),
	.nRst(nResetSeq)
);
DFFR DFFR_4(
	.Clk(ClockSeq),
	.D(nextQ3),
	.Q(Q3),
	.nQ(NotQ3),
	.nRst(nResetSeq)
);
INV1 INV1_3(
	.A(DataIn),
	.Q(NotDataIn)
);
NAND2 NAND2_1(
	.A(N_1),
	.B(DataIn),
	.Q(N_6)
);
NAND2 NAND2_2(
	.A(NotDataIn),
	.B(N_2),
	.Q(N_12)
);
NAND2 NAND2_3(
	.A(DataIn),
	.B(Q3),
	.Q(N_3)
);
NAND3 NAND3_1(
	.A(NotQ3),
	.B(Q1),
	.C(DataIn),
	.Q(N_8)
);
NAND3 NAND3_2(
	.A(Q2),
	.B(NotQ1),
	.C(NotQ0),
	.Q(N_4)
);
NAND4 NAND4_1(
	.A(N_5),
	.B(N_9),
	.C(N_10),
	.D(N_11),
	.Q(nextQ0)
);
NAND4 NAND4_2(
	.A(N_11),
	.B(N_6),
	.C(N_7),
	.D(N_8),
	.Q(nextQ1)
);
NAND4 NAND4_4(
	.A(DataIn),
	.B(NotQ0),
	.C(NotQ1),
	.D(NotQ2),
	.Q(N_9)
);
NAND4 NAND4_5(
	.A(NotQ3),
	.B(Q2),
	.C(Q1),
	.D(DataIn),
	.Q(N_10)
);
NAND4 NAND4_6(
	.A(NotQ3),
	.B(NotQ2),
	.C(Q0),
	.D(DataIn),
	.Q(N_11)
);
NAND4 NAND4_7(
	.A(N_12),
	.B(N_13),
	.C(N_14),
	.D(N_15),
	.Q(nextQ2)
);
NAND4 NAND4_11(
	.A(DataIn),
	.B(NotQ0),
	.C(Q1),
	.D(NotQ3),
	.Q(N_13)
);
NAND4 NAND4_12(
	.A(NotQ3),
	.B(Q2),
	.C(NotQ1),
	.D(DataIn),
	.Q(N_14)
);
NAND4 NAND4_13(
	.A(NotQ0),
	.B(NotQ1),
	.C(Q2),
	.D(NotQ3),
	.Q(N_15)
);
NOR2 NOR2_1(
	.A(N_4),
	.B(N_20),
	.Q(nextQ3)
);
NOR2 NOR2_2(
	.A(N_16),
	.B(N_17),
	.Q(N_5)
);
NOR2 NOR2_3(
	.A(N_19),
	.B(N_18),
	.Q(N_7)
);
NOR4 NOR4_1(
	.A(Q3),
	.B(NotQ2),
	.C(NotQ1),
	.D(NotQ0),
	.Q(N_16)
);
NOR4 NOR4_2(
	.A(NotDataIn),
	.B(Q0),
	.C(Q1),
	.D(Q2),
	.Q(N_17)
);
NOR4 NOR4_3(
	.A(NotQ3),
	.B(NotQ2),
	.C(Q1),
	.D(NotQ0),
	.Q(N_1)
);
NOR4 NOR4_4(
	.A(Q3),
	.B(NotQ2),
	.C(NotQ1),
	.D(NotQ0),
	.Q(N_2)
);
NOR4 NOR4_5(
	.A(NotQ3),
	.B(Q2),
	.C(Q1),
	.D(Q0),
	.Q(MatchAll)
);
NOR4 NOR4_6(
	.A(NotQ0),
	.B(NotQ1),
	.C(Q2),
	.D(Q3),
	.Q(N_18)
);
NOR4 NOR4_7(
	.A(N_3),
	.B(Q0),
	.C(Q1),
	.D(Q2),
	.Q(N_19)
);
XOR2 XOR2_1(
	.A(Q3),
	.B(DataIn),
	.Q(N_20)
);
endmodule // TEAMG_Circuit3


module TEAMG_Circuit4_ShiftRegister(
	ClockDiv,
	Rx,
	iD0,
	iD1,
	iD2,
	iD3,
	iD4,
	iD5,
	iD6,
	iP,
	nReset
);
input ClockDiv;
input Rx;
output iD0;
output iD1;
output iD2;
output iD3;
output iD4;
output iD5;
output iD6;
output iP;
input nReset;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;

DFFR DFFR_1(
	.Clk(ClockDiv),
	.D(Rx),
	.Q(iP),
	.nQ(N_1),
	.nRst(nReset)
);
DFFR DFFR_2(
	.Clk(ClockDiv),
	.D(iP),
	.Q(iD6),
	.nQ(N_2),
	.nRst(nReset)
);
DFFR DFFR_3(
	.Clk(ClockDiv),
	.D(iD6),
	.Q(iD5),
	.nQ(N_3),
	.nRst(nReset)
);
DFFR DFFR_4(
	.Clk(ClockDiv),
	.D(iD5),
	.Q(iD4),
	.nQ(N_4),
	.nRst(nReset)
);
DFFR DFFR_5(
	.Clk(ClockDiv),
	.D(iD4),
	.Q(iD3),
	.nQ(N_5),
	.nRst(nReset)
);
DFFR DFFR_6(
	.Clk(ClockDiv),
	.D(iD3),
	.Q(iD2),
	.nQ(N_6),
	.nRst(nReset)
);
DFFR DFFR_7(
	.Clk(ClockDiv),
	.D(iD2),
	.Q(iD1),
	.nQ(N_7),
	.nRst(nReset)
);
DFFR DFFR_8(
	.Clk(ClockDiv),
	.D(iD1),
	.Q(iD0),
	.nQ(N_8),
	.nRst(nReset)
);
endmodule // TEAMG_Circuit4_ShiftRegister


module TEAMG_Circuit4_Control_Qn0(
	NOTQ0,
	NOTQ1,
	NOTQ2,
	NOTQ3,
	NOTQ4,
	NOTQ5,
	NOTRx,
	Q0,
	Q0n,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Rx
);
input NOTQ0;
input NOTQ1;
input NOTQ2;
input NOTQ3;
input NOTQ4;
input NOTQ5;
input NOTRx;
input Q0;
output Q0n;
input Q1;
input Q2;
input Q3;
input Q4;
input Q5;
input Rx;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;

NAND2 NAND2_1(
	.A(N_1),
	.B(N_7),
	.Q(N_5)
);
NAND2 NAND2_2(
	.A(N_2),
	.B(N_18),
	.Q(N_4)
);
NAND2 NAND2_3(
	.A(N_3),
	.B(N_17),
	.Q(N_6)
);
NAND3 NAND3_1(
	.A(N_4),
	.B(N_5),
	.C(N_6),
	.Q(Q0n)
);
NAND3 NAND3_2(
	.A(N_8),
	.B(N_9),
	.C(N_10),
	.Q(N_7)
);
NAND3 NAND3_3(
	.A(NOTQ3),
	.B(NOTQ2),
	.C(Q1),
	.Q(N_13)
);
NAND3 NAND3_4(
	.A(NOTQ3),
	.B(Q2),
	.C(NOTQ1),
	.Q(N_14)
);
NAND3 NAND3_5(
	.A(Q3),
	.B(Q2),
	.C(Q1),
	.Q(N_15)
);
NAND3 NAND3_6(
	.A(Q3),
	.B(NOTQ2),
	.C(NOTQ1),
	.Q(N_16)
);
NAND3 NAND3_7(
	.A(NOTQ3),
	.B(Q2),
	.C(Q1),
	.Q(N_8)
);
NAND3 NAND3_8(
	.A(Q3),
	.B(Q2),
	.C(NOTQ1),
	.Q(N_9)
);
NAND3 NAND3_9(
	.A(Q3),
	.B(NOTQ2),
	.C(Q1),
	.Q(N_10)
);
NAND3 NAND3_10(
	.A(NOTRx),
	.B(NOTQ5),
	.C(NOTQ4),
	.Q(N_11)
);
NAND3 NAND3_12(
	.A(NOTRx),
	.B(Q5),
	.C(Q4),
	.Q(N_12)
);
NAND4 NAND4_1(
	.A(N_13),
	.B(N_14),
	.C(N_15),
	.D(N_16),
	.Q(N_17)
);
NAND4 NAND4_2(
	.A(N_11),
	.B(N_19),
	.C(N_12),
	.D(N_20),
	.Q(N_18)
);
NAND4 NAND4_3(
	.A(Rx),
	.B(NOTQ5),
	.C(NOTQ4),
	.D(Q0),
	.Q(N_19)
);
NAND4 NAND4_4(
	.A(Rx),
	.B(Q5),
	.C(Q4),
	.D(NOTQ0),
	.Q(N_20)
);
NOR2 NOR2_1(
	.A(Q5),
	.B(Q4),
	.Q(N_1)
);
NOR2 NOR2_2(
	.A(Q5),
	.B(NOTQ4),
	.Q(N_3)
);
NOR3 NOR3_1(
	.A(Q3),
	.B(Q2),
	.C(Q1),
	.Q(N_2)
);
endmodule // TEAMG_Circuit4_Control_Qn0


module TEAMG_Circuit4_Control_Qn1(
	NOTQ0,
	NOTQ2,
	NOTQ3,
	NOTQ5,
	Q0,
	Q1,
	Q1n,
	Q2,
	Q3,
	Q4,
	Q5
);
input NOTQ0;
input NOTQ2;
input NOTQ3;
input NOTQ5;
input Q0;
input Q1;
output Q1n;
input Q2;
input Q3;
input Q4;
input Q5;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;

NAND2 NAND2_1(
	.A(N_3),
	.B(N_4),
	.Q(Q1n)
);
NAND2 NAND2_2(
	.A(N_1),
	.B(N_2),
	.Q(N_3)
);
NAND2 NAND2_3(
	.A(NOTQ5),
	.B(N_7),
	.Q(N_4)
);
NAND3 NAND3_2(
	.A(NOTQ3),
	.B(Q1),
	.C(NOTQ0),
	.Q(N_5)
);
NAND3 NAND3_3(
	.A(Q3),
	.B(Q1),
	.C(NOTQ0),
	.Q(N_6)
);
NAND4 NAND4_1(
	.A(N_5),
	.B(N_8),
	.C(N_6),
	.D(N_9),
	.Q(N_7)
);
NAND4 NAND4_2(
	.A(Q4),
	.B(NOTQ3),
	.C(Q2),
	.D(Q0),
	.Q(N_8)
);
NAND4 NAND4_3(
	.A(Q4),
	.B(Q3),
	.C(NOTQ2),
	.D(Q0),
	.Q(N_9)
);
NOR3 NOR3_1(
	.A(Q5),
	.B(Q4),
	.C(NOTQ0),
	.Q(N_1)
);
XNR2 XNR2_1(
	.A(Q3),
	.B(Q2),
	.Q(N_2)
);
endmodule // TEAMG_Circuit4_Control_Qn1


module TEAMG_Circuit4_Control_Qn2(
	NOTQ0,
	NOTQ1,
	NOTQ3,
	NOTQ4,
	NOTQ5,
	Q0,
	Q1,
	Q2,
	Q2n,
	Q3,
	Q4
);
input NOTQ0;
input NOTQ1;
input NOTQ3;
input NOTQ4;
input NOTQ5;
input Q0;
input Q1;
input Q2;
output Q2n;
input Q3;
input Q4;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;

NAND2 NAND2_1(
	.A(N_2),
	.B(N_1),
	.Q(Q2n)
);
NAND2 NAND2_2(
	.A(NOTQ5),
	.B(N_7),
	.Q(N_1)
);
NAND3 NAND3_1(
	.A(NOTQ5),
	.B(Q2),
	.C(NOTQ1),
	.Q(N_2)
);
NAND3 NAND3_2(
	.A(NOTQ3),
	.B(Q2),
	.C(Q0),
	.Q(N_4)
);
NAND3 NAND3_3(
	.A(Q3),
	.B(Q2),
	.C(Q0),
	.Q(N_5)
);
NAND4 NAND4_1(
	.A(NOTQ4),
	.B(NOTQ3),
	.C(Q1),
	.D(NOTQ0),
	.Q(N_3)
);
NAND4 NAND4_2(
	.A(Q4),
	.B(Q3),
	.C(Q1),
	.D(NOTQ0),
	.Q(N_6)
);
NAND4 NAND4_3(
	.A(N_3),
	.B(N_4),
	.C(N_5),
	.D(N_6),
	.Q(N_7)
);
endmodule // TEAMG_Circuit4_Control_Qn2


module TEAMG_Circuit4_Control_Qn3(
	NOTQ0,
	NOTQ1,
	NOTQ2,
	NOTQ3,
	Q0,
	Q1,
	Q2,
	Q3n,
	Q4,
	Q5
);
input NOTQ0;
input NOTQ1;
input NOTQ2;
input NOTQ3;
input Q0;
input Q1;
input Q2;
output Q3n;
input Q4;
input Q5;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;

NOR2 NOR2_1(
	.A(Q5),
	.B(N_4),
	.Q(Q3n)
);
NOR2 NOR2_2(
	.A(NOTQ3),
	.B(Q2),
	.Q(N_1)
);
NOR3 NOR3_1(
	.A(NOTQ3),
	.B(NOTQ1),
	.C(Q0),
	.Q(N_2)
);
NOR3 NOR3_2(
	.A(NOTQ3),
	.B(NOTQ2),
	.C(NOTQ0),
	.Q(N_3)
);
NOR4 NOR4_1(
	.A(N_1),
	.B(N_2),
	.C(N_3),
	.D(N_5),
	.Q(N_4)
);
NOR4 NOR4_2(
	.A(Q4),
	.B(NOTQ2),
	.C(Q1),
	.D(Q0),
	.Q(N_5)
);
endmodule // TEAMG_Circuit4_Control_Qn3


module TEAMG_Circuit4_Control_Qn4(
	NOTQ3,
	NOTQ5,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q4n
);
input NOTQ3;
input NOTQ5;
input Q0;
input Q1;
input Q2;
input Q3;
input Q4;
output Q4n;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;

NAND2 NAND2_1(
	.A(N_1),
	.B(N_3),
	.Q(Q4n)
);
NAND2 NAND2_2(
	.A(NOTQ5),
	.B(Q4),
	.Q(N_1)
);
NAND2 NAND2_3(
	.A(N_2),
	.B(N_4),
	.Q(N_3)
);
NAND2 NAND2_4(
	.A(N_6),
	.B(N_5),
	.Q(N_4)
);
NAND2 NAND2_5(
	.A(Q4),
	.B(NOTQ3),
	.Q(N_5)
);
NAND2 NAND2_6(
	.A(NOTQ5),
	.B(Q3),
	.Q(N_6)
);
NOR3 NOR3_1(
	.A(Q2),
	.B(Q1),
	.C(Q0),
	.Q(N_2)
);
endmodule // TEAMG_Circuit4_Control_Qn4


module TEAMG_Circuit4_Control_Qn5(
	NOTQ0,
	NOTQ1,
	NOTQ2,
	NOTQ3,
	NOTQ4,
	Q5n
);
input NOTQ0;
input NOTQ1;
input NOTQ2;
input NOTQ3;
input NOTQ4;
output Q5n;

wire N_1;

NAND4 NAND4_1(
	.A(NOTQ3),
	.B(NOTQ2),
	.C(NOTQ1),
	.D(NOTQ0),
	.Q(N_1)
);
NOR2 NOR2_1(
	.A(NOTQ4),
	.B(N_1),
	.Q(Q5n)
);
endmodule // TEAMG_Circuit4_Control_Qn5


module TEAMG_Circuit4_Control_iLoad(
	NOTQ1,
	NOTQ2,
	NOTQ3,
	Q4,
	Q5,
	iLoad
);
input NOTQ1;
input NOTQ2;
input NOTQ3;
input Q4;
input Q5;
output iLoad;

wire N_1;
wire N_2;

NAND2 NAND2_1(
	.A(Q5),
	.B(Q4),
	.Q(N_1)
);
NAND3 NAND3_1(
	.A(NOTQ3),
	.B(NOTQ2),
	.C(NOTQ1),
	.Q(N_2)
);
NOR2 NOR2_1(
	.A(N_1),
	.B(N_2),
	.Q(iLoad)
);
endmodule // TEAMG_Circuit4_Control_iLoad


module TEAMG_Circuit4_Control_ClockDiv(
	ClockDiv,
	NOTQ0,
	NOTQ1,
	NOTQ2,
	NOTQ3,
	NOTQ5,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5
);
output ClockDiv;
input NOTQ0;
input NOTQ1;
input NOTQ2;
input NOTQ3;
input NOTQ5;
input Q0;
input Q1;
input Q2;
input Q3;
input Q4;
input Q5;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;

NAND2 NAND2_1(
	.A(N_1),
	.B(N_6),
	.Q(N_4)
);
NAND2 NAND2_2(
	.A(Q2),
	.B(NOTQ0),
	.Q(N_1)
);
NAND3 NAND3_1(
	.A(N_7),
	.B(N_3),
	.C(N_5),
	.Q(ClockDiv)
);
NAND3 NAND3_2(
	.A(Q5),
	.B(Q4),
	.C(N_2),
	.Q(N_3)
);
NAND3 NAND3_3(
	.A(NOTQ5),
	.B(Q3),
	.C(N_4),
	.Q(N_5)
);
NAND3 NAND3_4(
	.A(NOTQ2),
	.B(NOTQ1),
	.C(Q0),
	.Q(N_6)
);
NAND4 NAND4_1(
	.A(NOTQ5),
	.B(NOTQ3),
	.C(Q1),
	.D(Q0),
	.Q(N_7)
);
NOR4 NOR4_1(
	.A(Q3),
	.B(Q2),
	.C(Q1),
	.D(Q0),
	.Q(N_2)
);
endmodule // TEAMG_Circuit4_Control_ClockDiv


module TEAMG_Circuit4_Control(
	Clock288,
	ClockDiv,
	Rx,
	iLoad,
	nReset
);
input Clock288;
output ClockDiv;
input Rx;
output iLoad;
input nReset;

wire NOTQ0;
wire NOTQ1;
wire NOTQ2;
wire NOTQ3;
wire NOTQ4;
wire NOTQ5;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire Q0;
wire Q1;
wire Q2;
wire Q3;
wire Q4;
wire Q5;

TEAMG_Circuit4_Control_ClockDiv Circuit4_Control_ClockDiv_1(
	.ClockDiv(ClockDiv),
	.NOTQ0(NOTQ0),
	.NOTQ1(NOTQ1),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.NOTQ5(NOTQ5),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q3(Q3),
	.Q4(Q4),
	.Q5(Q5)
);
TEAMG_Circuit4_Control_Qn0 Circuit4_Control_Qn0_1(
	.NOTQ0(NOTQ0),
	.NOTQ1(NOTQ1),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.NOTQ4(NOTQ4),
	.NOTQ5(NOTQ5),
	.NOTRx(N_1),
	.Q0(Q0),
	.Q0n(N_2),
	.Q1(Q1),
	.Q2(Q2),
	.Q3(Q3),
	.Q4(Q4),
	.Q5(Q5),
	.Rx(Rx)
);
TEAMG_Circuit4_Control_Qn1 Circuit4_Control_Qn1_1(
	.NOTQ0(NOTQ0),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.NOTQ5(NOTQ5),
	.Q0(Q0),
	.Q1(Q1),
	.Q1n(N_3),
	.Q2(Q2),
	.Q3(Q3),
	.Q4(Q4),
	.Q5(Q5)
);
TEAMG_Circuit4_Control_Qn2 Circuit4_Control_Qn2_1(
	.NOTQ0(NOTQ0),
	.NOTQ1(NOTQ1),
	.NOTQ3(NOTQ3),
	.NOTQ4(NOTQ4),
	.NOTQ5(NOTQ5),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q2n(N_4),
	.Q3(Q3),
	.Q4(Q4)
);
TEAMG_Circuit4_Control_Qn3 Circuit4_Control_Qn3_1(
	.NOTQ0(NOTQ0),
	.NOTQ1(NOTQ1),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q3n(N_5),
	.Q4(Q4),
	.Q5(Q5)
);
TEAMG_Circuit4_Control_Qn4 Circuit4_Control_Qn4_1(
	.NOTQ3(NOTQ3),
	.NOTQ5(NOTQ5),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q3(Q3),
	.Q4(Q4),
	.Q4n(N_6)
);
TEAMG_Circuit4_Control_Qn5 Circuit4_Control_Qn5_1(
	.NOTQ0(NOTQ0),
	.NOTQ1(NOTQ1),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.NOTQ4(NOTQ4),
	.Q5n(N_7)
);
TEAMG_Circuit4_Control_iLoad Circuit4_Control_iLoad_1(
	.NOTQ1(NOTQ1),
	.NOTQ2(NOTQ2),
	.NOTQ3(NOTQ3),
	.Q4(Q4),
	.Q5(Q5),
	.iLoad(iLoad)
);
DFFR DFFR_1(
	.Clk(Clock288),
	.D(N_5),
	.Q(Q3),
	.nQ(NOTQ3),
	.nRst(nReset)
);
DFFR DFFR_2(
	.Clk(Clock288),
	.D(N_4),
	.Q(Q2),
	.nQ(NOTQ2),
	.nRst(nReset)
);
DFFR DFFR_3(
	.Clk(Clock288),
	.D(N_3),
	.Q(Q1),
	.nQ(NOTQ1),
	.nRst(nReset)
);
DFFR DFFR_4(
	.Clk(Clock288),
	.D(N_2),
	.Q(Q0),
	.nQ(NOTQ0),
	.nRst(nReset)
);
DFFR DFFR_5(
	.Clk(Clock288),
	.D(N_6),
	.Q(Q4),
	.nQ(NOTQ4),
	.nRst(nReset)
);
DFFR DFFR_6(
	.Clk(Clock288),
	.D(N_7),
	.Q(Q5),
	.nQ(NOTQ5),
	.nRst(nReset)
);
INV1 INV1_1(
	.A(Rx),
	.Q(N_1)
);
endmodule // TEAMG_Circuit4_Control


module TEAMG_Circuit4_Retiming(
	ClockDiv,
	Rx,
	Tx,
	nReset
);
input ClockDiv;
input Rx;
output Tx;
input nReset;

wire MetaStable;
wire N_1;
wire N_2;
wire N_3;

DFFR DFFR_1(
	.Clk(ClockDiv),
	.D(Rx),
	.Q(MetaStable),
	.nQ(N_1),
	.nRst(nReset)
);
DFFR DFFR_2(
	.Clk(ClockDiv),
	.D(MetaStable),
	.Q(N_2),
	.nQ(N_3),
	.nRst(nReset)
);
INV1 INV1_1(
	.A(N_3),
	.Q(Tx)
);
endmodule // TEAMG_Circuit4_Retiming


module TEAMG_Circuit4(
	Clock288,
	Rx,
	iD0,
	iD1,
	iD2,
	iD3,
	iD4,
	iD5,
	iD6,
	iLoad,
	iP,
	nReset
);
input Clock288;
input Rx;
output iD0;
output iD1;
output iD2;
output iD3;
output iD4;
output iD5;
output iD6;
output iLoad;
output iP;
input nReset;

wire ClockDiv;
wire N_1;

TEAMG_Circuit4_Control TeamG_Circuit4_Control_1(
	.Clock288(Clock288),
	.ClockDiv(ClockDiv),
	.Rx(Rx),
	.iLoad(iLoad),
	.nReset(nReset)
);
TEAMG_Circuit4_Retiming TeamG_Retiming_Circuit_1(
	.ClockDiv(ClockDiv),
	.Rx(Rx),
	.Tx(N_1),
	.nReset(nReset)
);
TEAMG_Circuit4_ShiftRegister TeamG_Shift_Register_1(
	.ClockDiv(ClockDiv),
	.Rx(N_1),
	.iD0(iD0),
	.iD1(iD1),
	.iD2(iD2),
	.iD3(iD3),
	.iD4(iD4),
	.iD5(iD5),
	.iD6(iD6),
	.iP(iP),
	.nReset(nReset)
);
endmodule // TEAMG_Circuit4


module TEAMG_DESIGN(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	Clock288,
	Q0,
	Q1,
	Q2,
	Rx,
	iD0,
	iD1,
	iD2,
	iD3,
	iD4,
	iD5,
	iD6,
	iLoad,
	iP,
	nReset
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input Clock288;
output Q0;
output Q1;
output Q2;
input Rx;
output iD0;
output iD1;
output iD2;
output iD3;
output iD4;
output iD5;
output iD6;
output iLoad;
output iP;
input nReset;

INV1 INV1_1(
	.A(A0),
	.Q(Q0)
);
TEAMG_Circuit2 TEAMG_Circuit2_1(
	.EnableOsc(A1),
	.OscOut(Q1),
	.nReset(A2)
);
TEAMG_Circuit3 TEAMG_Circuit3_1(
	.ClockSeq(A3),
	.DataIn(A5),
	.MatchAll(Q2),
	.nResetSeq(A4)
);
TEAMG_Circuit4 TEAMG_Circuit4_1(
	.Clock288(Clock288),
	.Rx(Rx),
	.iD0(iD0),
	.iD1(iD1),
	.iD2(iD2),
	.iD3(iD3),
	.iD4(iD4),
	.iD5(iD5),
	.iD6(iD6),
	.iLoad(iLoad),
	.iP(iP),
	.nReset(nReset)
);
endmodule // TEAMG_DESIGN
