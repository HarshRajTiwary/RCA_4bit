`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 12:35:43
// Design Name: 
// Module Name: tb
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


module tb();
reg [3:0]a;
reg [3:0]b;
wire [3:0]sum;
wire co;

RCA_4bit dut(a,b,sum,co);

initial
begin
a=4'b0011; b=4'b1100;
#5 a=4'b0011; b=4'b1110;
#5 a=4'b1011; b=4'b1100;
#5 $finish;
end


endmodule
