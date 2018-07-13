module keyboard(clk_10k, R, C, Q, valid);
	input clk_10k;
	input [3:0] R;
	output [3:0] C;
	output [3:0] Q;
	output valid;
	reg [3:0] C;
	reg [3:0] Q;
	reg valid;
	reg outputing;
	reg [3:0] lastT;
	reg [3:0] T;
	reg [1:0] col;
	reg [3:0] lastpressed;
	reg [3:0] pressed;
	initial begin T<=0; lastpressed<=0; pressed<=0; end
	always@(posedge clk_10k) begin
		if(valid==1) valid=0;
		col=col+2'b01;
		case(col)
			2'b00: C<=4'b0111;
			2'b01: C<=4'b1011;
			2'b10: C<=4'b1101;
			2'b11: C<=4'b1110;
		endcase
		case({C, R})
			8'b01110111: begin T=4'b1111; pressed[col]=1'b1; end
			8'b01111011: begin T=4'b1011; pressed[col]=1'b1; end
			8'b01111101: begin T=4'b0111; pressed[col]=1'b1; end
			8'b01111110: begin T=4'b0011; pressed[col]=1'b1; end
			8'b10110111: begin T=4'b1110; pressed[col]=1'b1; end
			8'b10111011: begin T=4'b1010; pressed[col]=1'b1; end
			8'b10111101: begin T=4'b0110; pressed[col]=1'b1; end
			8'b10111110: begin T=4'b0010; pressed[col]=1'b1; end
			8'b11010111: begin T=4'b1101; pressed[col]=1'b1; end
			8'b11011011: begin T=4'b1001; pressed[col]=1'b1; end
			8'b11011101: begin T=4'b0101; pressed[col]=1'b1; end
			8'b11011110: begin T=4'b0001; pressed[col]=1'b1; end
			8'b11100111: begin T=4'b1100; pressed[col]=1'b1; end
			8'b11101011: begin T=4'b1000; pressed[col]=1'b1; end
			8'b11101101: begin T=4'b0100; pressed[col]=1'b1; end
			8'b11101110: begin T=4'b0000; pressed[col]=1'b1; end
			default: begin T=4'b0000; pressed[col]=1'b0; end
		endcase
		if(pressed[col]==1'b0) begin
			if(lastpressed==0) begin
				Q=4'b0000;
				outputing=0;
			end
		end
		else if(T==lastT) begin
			if(outputing==1) valid=0;
			if(outputing==0) if(lastpressed[col]==1'b1) begin valid=1; Q=T; outputing=1; end
		end
		else if(outputing==0) lastT=T;
		lastpressed[col]=pressed[col];
	end
endmodule