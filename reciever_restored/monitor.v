module monitor(clk, A, OL, DIG);
	input clk;
	input [15:0] A;
	output reg [6:0] OL;
	output reg [3:0] DIG;
	reg [3:0] out;
	reg [1:0] col;
	always@ (posedge clk) begin
		col=col+1;
		case(col)
			0: begin out=A[15:8]/10; DIG=4'b1000; end
			1: begin out=A[15:8]%10; DIG=4'b0100; end
			2: begin out=A[7:0]/10; DIG=4'b0010; end
			3: begin out=A[7:0]%10; DIG=4'b0001; end
		endcase
		case(out)
			0: OL=7'b1111110;
			1: OL=7'b0110000;
			2: OL=7'b1101101;
			3: OL=7'b1111001;
			4: OL=7'b0110011;
			5: OL=7'b1011011;
			6: OL=7'b1011111;
			7: OL=7'b1110000;
			8: OL=7'b1111111;
			9: OL=7'b1111011;
			10: OL=7'b1110111;
			11: OL=7'b0011111;
			12: OL=7'b0001101;
			13: OL=7'b0111101;
			14: OL=7'b1001111;
			15: OL=7'b1000111;
			default: OL=7'b0000000;
		endcase
	end
endmodule