module defreq(clk_50M, c_baud, c_10k, c_1k, c_100k);
	input clk_50M;
	output reg c_baud;
	output reg c_10k;
	output reg c_1k;
	output reg c_100k;
	reg[13:0] q1;
	reg[13:0] q2;
	reg[15:0] q3;
	reg[8:0] q4;
	always@(posedge clk_50M)
	begin
		q1=q1+1;
		q2=q2+1;
		q3=q3+1;
		q4=q4+1;
		if(q1==5206) begin q1=0; c_baud=1; end
		else if(q1==2603) c_baud=0;
		if(q2==5000) begin q2=0; c_10k=1; end
		else if(q2==2500) c_10k=0;
		if(q3==50000) begin q3=0; c_1k=1; end
		else if(q3==25000) c_1k=0;
		if(q4==500) begin q4=0; c_100k=1; end
		else if(q4==250) c_100k=0;
	end
endmodule