module tally_matrix(
	input clk,
	input [9:0] sw,
	input [2:0] button,
	output reg [9:0] led
);

wire [32:0] total1 = {33{1'b0}};
wire [32:0] total2 = {33{1'b0}};
wire [32:0] total3 = {33{1'b0}};
reg [16:0] input1;
reg [16:0] input2;
reg [16:0] posTwoThirds;
reg [16:0] negTwoThirds;

/********************** first **********************/
// equation 1: 2/3*x1 + 2/3*x2 - 5 = h1

wire [16:0] m1_to_a1;
matrix m1(
	.clk(clk),
	.in(input1),
	.slope(posTwoThirds),
	.out(m1_to_a1)
);

wire [32:0] total_a1;
add a1(
	.clk(clk),
	.in(m1_to_a1),
	.total(total1),
	.out(total_a1)
);

wire [16:0] m2_to_a2;
matrix m2(
	.clk(clk),
	.in(input2),
	.slope(posTwoThirds),
	.out(m2_to_a2)
);

wire [32:0] total_a2;
add a2(
	.clk(clk),
	.in(m2_to_a2),
	.total(total_a1),
	.out(total_a2)
);

wire [32:0] total_a3;
reg [16:0] bias1;
add a3(
	.clk(clk),
	.in(bias1),
	.total(total_a2),
	.out(total_a3)
);

wire [16:0] sq1_to_sig1;
squish sq1(
	.in(total_a3),
	.out(sq1_to_sig1)
);

wire [16:0] h1;
sigmoid sig1(
	.in(sq1_to_sig1),
	.out(h1)
);

/********************* second *********************/
//  equation 2: -2/3*x1 - 2/3*x2 + 16 = h2

wire [16:0] m3_to_a4;
matrix m3(
	.clk(clk),
	.in(input1),
	.slope(negTwoThirds),
	.out(m3_to_a4)
);

wire [32:0] total_a4;
add a4(
	.clk(clk),
	.in(m3_to_a4),
	.total(total2),
	.out(total_a4)
);

wire [16:0] m4_to_a5;
matrix m4(
	.clk(clk),
	.in(input2),
	.slope(negTwoThirds),
	.out(m4_to_a5)
);

wire [32:0] total_a5;
add a5(
	.clk(clk),
	.in(m4_to_a5),
	.total(total_a4),
	.out(total_a5)
);

wire [32:0] total_a6;
reg [16:0] bias2;
add a6(
	.clk(clk),
	.in(bias2),
	.total(total_a5),
	.out(total_a6)
);

wire [16:0] sq2_to_sig2;
squish sq2(
	.in(total_a6),
	.out(sq2_to_sig2)
);

wire [16:0] h2;
sigmoid sig2(
	.in(sq2_to_sig2),
	.out(h2)
);

/********************* third *********************/
// equation 3: 2/3*h1 + 2/3*h2 - 16 = y

wire [16:0] m5_to_a7;
matrix m5(
	.clk(clk),
	.in(h1),
	.slope(posTwoThirds),
	.out(m5_to_a7)
);

wire [32:0] total_a7;
add a7(
	.clk(clk),
	.in(m5_to_a7),
	.total(total3),
	.out(total_a7)
);

wire [16:0] m6_to_a8;
matrix m6(
	.clk(clk),
	.in(h2),
	.slope(posTwoThirds),
	.out(m6_to_a8)
);

wire [32:0] total_a8;
add a8(
	.clk(clk),
	.in(m6_to_a8),
	.total(total_a7),
	.out(total_a8)
);

wire [32:0] total_a9;
reg [16:0] bias3;
add a9(
	.clk(clk),
	.in(bias3),
	.total(total_a8),
	.out(total_a9)
);

wire [16:0] sq3_to_sig3;
squish sq3(
	.in(total_a9),
	.out(sq3_to_sig3)
);

wire [16:0] y;
sigmoid sig3(
	.in(sq3_to_sig3),
	.out(y)
);

always @ (posedge clk) begin
	if(sw[0] == 1'b1)
		input1 <= 17'b01111111111111111;
	else
		input1 <= 17'b00000000000000000;

	if(sw[1] == 1'b1)
		input2 <= 17'b01111111111111111;
	else
		input2 <= 17'b00000000000000000;
		
	posTwoThirds <= 17'b00000011111111111;
	negTwoThirds <= 17'b10000011111111111;	

	bias1 = 17'b10000000000011111;
	bias2 = 17'b01111111111111111;
	bias3 = 17'b11111111111111111;

	//led[8:0] <= out[15:7]; 
	led[8:0] <= y; //[24:16];
	led[9] <= y[16];
	
end
endmodule