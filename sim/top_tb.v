`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 09:43:36 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
    
    reg submit, clk, reset;
    reg [9:0] binary;
    
    wire [15:0] LEDs;
    
    top tp(submit, reset, binary, clk, LEDs);
    
    initial begin
        submit = 0;
        reset = 0;
        clk = 0;
        binary = 2;
        #50 submit = 1;
        #5 submit = 0;
        #20 reset = 1;
        #5 reset = 0;
        
        for (integer i = 0; i < 15; i = i + 1) begin
            #40 submit = 1;
            #5 submit = 0;
        end
        
        #200 $finish;
    end
    
    always #0.01 clk = ~clk;
    
endmodule
