// Half Adder

module half_adder (
    input a,
    input b,
    output sum,carry
);
    
    assign sum = a ^ b;
    assign carry = a&b;

endmodule


// Full Adder

module full_adder (
    input a,b,cin,
    output sum , carry
);

    assign sum = {a ^ b ^ cin};
    assign carry = (a & b ) | (b & cin) | (a & cin);
    
endmodule

// Full adder using verilog operator

module full_adder (
    input a,b,cin,
    output sum , carry
);

    assign {carry,sum} = a + b + cin;
    
endmodule