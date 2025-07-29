module GreaterThan (A, B, Z);
input [3:0] A, B;
output Z;

assign Z = A[1:0] > B[3:2];

endmodule
