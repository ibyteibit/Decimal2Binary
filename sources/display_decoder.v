module display_decoder(
input [3:0] bcd0, bcd1, bcd2, bcd4, bcd5, bcd6, bcd7,
input negative,
input [2:0] displayDigit,
output reg [6:0] cathode);

reg [3:0] cathodeBCD;
    
always @(*) begin
    case (displayDigit)
            3'd0: cathodeBCD = bcd0;
            3'd1: cathodeBCD = bcd1;
            3'd2: cathodeBCD = bcd2;
            3'd3: cathodeBCD = (negative)? 10:11;
            3'd4: cathodeBCD = bcd4;
            3'd5: cathodeBCD = bcd5;
            3'd6: cathodeBCD = bcd6;
            3'd7: cathodeBCD = bcd7;
            default: cathodeBCD = 4'd0;
        endcase
    case (cathodeBCD)
        4'd0: cathode = 7'b0000001; 
        4'd1: cathode = 7'b1001111; 
        4'd2: cathode = 7'b0010010; 
        4'd3: cathode = 7'b0000110; 
        4'd4: cathode = 7'b1001100; 
        4'd5: cathode = 7'b0100100; 
        4'd6: cathode = 7'b0100000; 
        4'd7: cathode = 7'b0001111; 
        4'd8: cathode = 7'b0000000; 
        4'd9: cathode = 7'b0000100; 
        4'd10:cathode = 7'b1111110; 
        default: cathode = 7'b1111111;
    endcase
end
endmodule

