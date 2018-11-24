module squish(
	input [32:0] in,
	output [16:0] out
);

reg [31:0] matrix [31:0];
integer shift = 2;
reg [31:0] slope = 32'b00000000000000000000000000000011;

always @ (in) begin 
		matrix[0] = slope;
		matrix[1] = matrix[0] << shift;
		matrix[2] = matrix[1] << shift;
		matrix[3] = matrix[2] << shift;
		matrix[4] = matrix[3] << shift;
		matrix[5] = matrix[4] << shift;
		matrix[6] = matrix[5] << shift;
		matrix[7] = matrix[6] << shift;
		matrix[8] = matrix[7] << shift;
		matrix[9] = matrix[8] << shift;
		matrix[10] = matrix[9] << shift;
		matrix[11] = matrix[10] << shift;
		matrix[12] = matrix[11] << shift;
		matrix[13] = matrix[12] << shift;
		matrix[14] = matrix[13] << shift;
		matrix[15] = matrix[14] << shift;
		
		out[0] <= |(in & matrix[0]);
		out[1] <= |(in & matrix[1]);
		out[2] <= |(in & matrix[2]);
		out[3] <= |(in & matrix[3]);
		out[4] <= |(in & matrix[4]);
		out[5] <= |(in & matrix[5]);
		out[6] <= |(in & matrix[6]);
		out[7] <= |(in & matrix[7]);
		out[8] <= |(in & matrix[8]);
		out[9] <= |(in & matrix[9]);
		out[10] <= |(in & matrix[10]);
		out[11] <= |(in & matrix[11]);
		out[12] <= |(in & matrix[12]);
		out[13] <= |(in & matrix[13]);
		out[14] <= |(in & matrix[14]);
		out[15] <= |(in & matrix[15]);
		out[16] <= in[32];
end

endmodule