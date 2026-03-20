`timescale 1ns / 1ps
module multiplier(
    input [3:0] A ,B,
    output reg [7:0] O
    );
reg [3:0] y0, y1, y2, y3;
reg gnd = 0;
wire [3:0] s1,s2, s3;
wire c1, c2, c3;
reg [7:0]Op;
always@ (*) begin
y0 = B & {4 {A[0]}};
y1 = B & {4 {A[1]}};
y2 = B & {4 {A[2]}};
y3 = B & {4 {A[3]}};
end
RCA add1 (.A({gnd,y0[3:1]}), .B(y1), .Cin(gnd), .Cout(c1), .S(s1) );
RCA add2 (.A({c1 ,s1[3:1]}), .B(y2), .Cin(gnd), .Cout(c2), .S(s2) );
RCA add3 (.A({c2 ,s2[3:1]}), .B(y3), .Cin(gnd), .Cout(c3), .S(s3) );
always@ (*) begin
Op = {c3, s3, s2[0], s1[0],y0[0]};
O = Op;
end
endmodule
