module display(
    input clk_in,
    input reset,
    input [9:0] binary,
    input [3:0] score,
    output [7:0] anode,
    output [6:0] cathode      
);
    wire [3:0] bcd0, bcd1, bcd2, bcd4, bcd5, bcd6, bcd7;
    wire negative;
    wire [2:0] displayDigit;
    wire clk;
    score_to_BCD bc(score,bcd6, bcd7);
    binary_to_decimal bcd(binary,bcd0, bcd1, bcd2,negative);
    clk_divider_display div(clk_in,reset,clk);
    FSM fsm_inst(clk, reset, anode, displayDigit);
    assign bcd4 = 4'd11;
    assign bcd5 = 4'd11;
    //assign bcd6 = 4'd1;
    display_decoder decoder_inst(
        bcd0, bcd1, bcd2, bcd4, bcd5, bcd6, bcd7,
        negative,
        displayDigit,
        cathode
    );
endmodule
