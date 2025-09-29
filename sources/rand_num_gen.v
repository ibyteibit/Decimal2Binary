`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 05:17:34 PM
// Design Name: 
// Module Name: rand_num_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rand_num_gen(
    input [3:0] level,
    input numGen,
    input clk,
    input reset,
    output reg [9:0] number
    );
    
    reg [20:0] counter;
    
    initial begin
        counter = 0;
        number = 5;
    end
    
    always @(posedge numGen or posedge reset) begin
        case (level)
        1: number = counter % 7;
        2: number = counter % 15;
        3: number = counter % 31;
        4: number = counter % 63;
        5: number = counter % 127;
        6: number = counter % 255;
        7: number = (counter % 383) - 128;
        8: number = (counter % 639) - 128;
        9: number = (counter % 767) - 256;
        10: number = (counter % 1023) - 512;
        endcase
        if (reset)
            number = 5;
    end
    
    always @(posedge clk) counter = counter + 1;
    
    
endmodule
