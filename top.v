`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 07:04:03 PM
// Design Name: 
// Module Name: top
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


module top(
    input submit,
    input reset,
    input [9:0] binary,
    input clk,
    output [15:0] LEDs,
    output [7:0] anode,
    output [6:0] cathode
    );
    
    wire [3:0] level;
    wire [9:0] number;
    wire correct;
    wire numGen;
    wire cleanSubmit;
    wire cleanReset;
    
    assign correct = (binary == number); 
        
    rand_num_gen rng(level, numGen, clk, cleanReset, number);
    
    timer tmr(clk, cleanReset, cleanSubmit, correct, LEDs, level, numGen);
    
    debouncer dbcrSubmit(clk, submit, cleanSubmit);
    
    debouncer dbcrReset(clk, reset, cleanReset);
    
    display(clk, reset, number, level, anode, cathode);
    
    
        
endmodule
