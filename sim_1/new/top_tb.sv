`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2020 10:48:39 AM
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


module top_tb;

    localparam T = 10;          //clock period (10ns)
    
     logic clk,reset;
     logic [3:0]m;
     logic [3:0]n;
     logic squareOut;
    
    top uut0 (.*);
    
    //20ns Clock running forever
    always
    begin
        clk = 1'b1;
        #(T / 2);
        clk = 1'b0;
        #(T / 2);
    end
    
    //reset at beginning 
    initial 
    begin
        reset = 1'b1;
        @(negedge clk);
        reset = 1'b0;
    end
    
    //stimuli
    initial
    begin
        m = 3;
        n = 2;
    end
    
endmodule
