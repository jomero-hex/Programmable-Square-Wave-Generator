`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2020 06:06:17 PM
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


module top    
    (
        input logic clk, reset,
        input logic [3:0]m,
        input logic [3:0]n,
        output logic squareOut 
    );
    
    squareWaveGen M0 (.clk(clk), .reset(reset), .m(m), .n(n), .waveForm(squareOut));

endmodule