module MultiPhaseClocks (Clk, A, B, C, E);

input Clk, A, B, C;

output E;

reg E, D;

always @ (posedge Clk)

E <= D | C;

always @ (negedge Clk)

D<= A & B;

endmodule
