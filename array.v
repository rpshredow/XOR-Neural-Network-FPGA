module array #(
	parameter N = 10
)
(
	input clk,
	input [N-1:0] in,
	input [31:0] slope,
	output reg [N-1:0] out
);

reg [N-1:0] matrix [N-1:0];
reg [N-1:0] array = {N{1'b1}};

always @ (posedge clk) begin
		matrix[N-1] <= array;
		matrix[N-2] <= array >> 1;
		matrix[N-3] <= array >> 2;
		matrix[N-4] <= array >> 3;
		matrix[N-5] <= array >> 4;
		matrix[N-6] <= array >> 5;
		matrix[N-7] <= array >> 6;
		matrix[N-8] <= array >> 7;
		matrix[N-9] <= array >> 8;
		matrix[N-10] <= array >> 9;
end

always @ (posedge clk) begin
	out <= matrix[9];
end
endmodule