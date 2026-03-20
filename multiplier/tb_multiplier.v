`timescale 1ns / 1ps

module test_mul();
reg [3:0] A, B;
wire [7:0] O;

multiplier dut(.A(A), .B(B), .O(O)); 

initial begin
A = 4'b0001;
B = 4'b0100;
#10
A = 4'b1111;
B = 4'b1111;#10
$stop;
end
endmodule
