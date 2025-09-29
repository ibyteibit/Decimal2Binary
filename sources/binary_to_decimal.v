module binary_to_decimal(
input [9:0] binary,
output [3:0] bcd0, bcd1, bcd2,
output negative
    );
    wire [9:0] flipped,tens;
    
   assign flipped = (binary[9])? ~binary + 1 : binary;
   assign negative = binary[9];
   assign bcd2 = flipped/100;
   assign tens = flipped%100;
   assign bcd1 = tens/10;
   assign bcd0 = tens%10;
endmodule
