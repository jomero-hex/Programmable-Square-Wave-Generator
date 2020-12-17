`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2020 12:08:22 PM
// Design Name: 
// Module Name: squareWaveGen
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


module squareWaveGen
    (
        input logic clk, reset,
        input logic [3:0] m,            // m = on interval, max = 1111 = 15
        input logic [3:0] n,             // n = off interval
        output logic waveForm
    );

    // signal declaration
    logic [11:0] r_next, r_reg;
    logic [7:0] q;
    
    // body
    // [1] Register segment
    always_ff @(posedge clk)    //sync. reset
    begin
        if(reset)
            r_reg <= 0;
        else
            r_reg <= r_next;
    end
    
    // [2] next-state logic segment
    assign r_next = (r_reg == (m + n) * 10 - 1)? 0: r_reg + 1;              
                                                                                                   
    // [3] output logic segment                                                  
    assign q = r_reg;    
    
    assign waveForm = (r_reg <= m * 10 - 1) ? 1'b1: 1'b0;                  
    
endmodule
