`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 05:52:08 PM
// Design Name: 
// Module Name: num_gen_tb
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


module num_gen_tb(

    );
    
    reg [3:0] level;
    wire [9:0] num;
    reg clk;
    
    rand_num_gen rng(level, clk, num);
    
    initial begin
        clk = 0;
        #1 level = 1;
        #9 level = 2;
        #6 level = 3;
        #17 level = 4;
        #10 level = 5;
        #11 level = 6;
        #4 level = 7;
        #25 level = 8;
        #15 level = 9;
        #17 level = 10;
    end
    
    always #0.001 clk = ~clk;
    
endmodule
