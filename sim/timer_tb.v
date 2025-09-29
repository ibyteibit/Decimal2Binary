`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 04:34:57 PM
// Design Name: 
// Module Name: timer_tb
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


module timer_tb(

    );
    
    reg clk, reset;
    wire [15:0] LEDs;
    
    timer tmr(clk, reset, LEDs);
    
    initial begin
        clk = 0;
        reset = 0;
        #100 reset = 1;
        #0.5 reset = 0;
    end
    
    always #0.5 clk = ~clk;
    
    
endmodule
