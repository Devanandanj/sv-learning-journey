
// 4x1 MUX

module mux4x1 (

    input [3:0] a,      // 4 bit input a
    input [3:0] b,      // 4 bit input b
    input [3:0] c,      // 4 bit input c
    input [3:0] d,      // 4 bit input d
    input [1:0] sel,    // sel - select between a,b,c,d
    
    output reg [3:0] out   // 4 bit output

    );
    
    always @(a,b,c,d,sel) begin
        
        case (sel)
        
        2'b00 : out = a;
        2'b01 : out = b;
        2'b10 : out = c;
        2'b11 : out = d;

    endcase

    end

endmodule