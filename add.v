module add(
	input clk,
	input [16:0] in,
	input [32:0] total,
	output reg [32:0] out
);

integer in_count;
integer total_count;
reg [15:0] ones = 16'b1111111111111111;
reg [15:0] temp;
reg [16:0] pad;
reg [16:0] sum;

always @ (posedge clk) begin
	in_count = in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7] + in[8] + in[9] + in[10] + in[11] + in[12] + in[13] + in[14] + in[15];
	total_count = total[0] + total[1] + total[2] + total[3] + total[4] + total[5] + total[6] + total[7] + total[8] + total[9] + total[10] + total[11] +
		total[12] + total[13] + total[14] + total[15] + total[16] + total[17] + total[18] + total[19] + total[20] + total[21] + total[22] +
		total[23] + total[24] + total[25] + total[26] + total[27] + total[28] + total[29] + total[30] + total[31];
	
	if(in[16] == 1'b1 && total[32] == 1'b0) begin
		if(in_count > total_count) begin
			if(total_count - (in_count - total_count) > 0) begin
				out = total >> (total_count - (in_count - total_count));
				out[32] = 1'b1;
			end
			
			if(total_count - (in_count - total_count) < 0) begin
				out = total << -(total_count - (in_count - total_count));
				temp = ones >> (16-(-(total_count - (in_count - total_count))));
				out = out | temp;
				out[32] = 1'b1;
			end
		end
		
		if(in_count <= total_count) begin
			out = total >> in_count;
			out[32] = 1'b0;
		end
	end
	
	if(in[16] == 1'b0 && total[32] == 1'b1) begin
		if(in_count > total_count) begin
			if(total_count - (in_count - total_count) >= 0) begin
				out = total >> (total_count - (in_count - total_count));
				out[32] = 1'b0;
			end
			
			if(total_count - (in_count - total_count) < 0) begin
				out = total << -(total_count - (in_count - total_count));
				temp = ones >> (16-(-(total_count - (in_count - total_count))));
				out = out | temp;
				out[32] = 1'b0;
			end
		end
	
		if(total_count > in_count) begin
			out[32] = 1'b0;
			out = total >> in_count;
			out[32] = 1'b1;
		end
	end
	
	if(in[16] == 1'b1 && total[32] == 1'b1) begin
		out = total << in_count;
		out = out | in;
		out[32] = 1'b1;
	end
	
	if(in[16] == 1'b0 && total[32] == 1'b0) begin
		out = total << in_count;
		out = out | in;
		out[32] = 1'b0;
	end
	
end

endmodule