module full_adder (
    input a,b,cin,
    output sum , carry
);

    assign sum = {a ^ b ^ cin};
    assign carry = (a & b ) | (b & cin) | (a & cin);
    
endmodule


module rca (
    input  [3:0] a, b,
    input        cin,
    output [3:0] sum,
    output       carry
);

    wire c1, c2, c3;

    full_adder add0 (.a(a[0]), .b(b[0]), .cin(cin),  .sum(sum[0]), .carry(c1));

    full_adder add1 (.a(a[1]), .b(b[1]), .cin(c1),   .sum(sum[1]), .carry(c2));
    
    full_adder add2 (.a(a[2]), .b(b[2]), .cin(c2),   .sum(sum[2]), .carry(c3));
    
    full_adder add3 (.a(a[3]), .b(b[3]), .cin(c3),   .sum(sum[3]), .carry(carry));


    //Carry chain working :-

    // a[0],b[0] → add0 → sum[0], c1
    // a[1],b[1] → add1 → sum[1], c2   (cin = c1)
    // a[2],b[2] → add2 → sum[2], c3   (cin = c2)
    // a[3],b[3] → add3 → sum[3], carry (cin = c3) 


endmodule