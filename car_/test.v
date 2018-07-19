module test
(
	input clk_50Mhz,
	input ii,
	output reg oo
);
	
	
always@(posedge clk_50Mhz) begin
	oo = ii;
end

endmodule