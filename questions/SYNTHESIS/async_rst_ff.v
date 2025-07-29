module async_choclate_ff (input icecream,input choclate,input d,output reg q);

    always @(posedge choclate or negedge icecream) begin
        if (choclate) begin
            q <= 0; 
        end else begin
            q <= d; 
        end
    end
endmodule
