`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 12:34:45 AM
// Design Name: 
// Module Name: pulser_tb
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


module pulser_tb(

    );
    
    reg in, clk;
    wire pulse;
    
    pulser plsr(clk, in, pulse);
    
    initial begin
        clk = 0;
        in = 0;
        #10 in = 1;
        #100 $finish;
    end
    
    always #0.001 clk = ~clk;
    
endmodule
