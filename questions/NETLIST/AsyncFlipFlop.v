module AsyncFlipFlop (ClkA, Reset, Set, CurrentState, NextState);
    input ClkA, Reset, Set;
    input [3:0] CurrentState;
    output [3:0] NextState;
    reg [3:0] NextState;

    always @ (negedge Reset or negedge Set or negedge ClkA)
        if (!Reset)
            NextState <= 12;        // Stmt A.
        else if (!Set)
            NextState <= 5;         // Stmt B.
        else
            NextState <= CurrentState;  // Stmt C.
endmodule

