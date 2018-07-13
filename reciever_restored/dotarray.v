module dotarray(clk_1k, figure, row, col);
	input clk_1k;
	input [2:0] figure;
	output reg[7:0] row;
	output reg[7:0] col;
	
	reg [2:0] count;
	always@(posedge clk_1k) begin
		count=count+1;
		case(count)
			0: begin col=8'b01111111; end
			1: begin col=8'b10111111; end
			2: begin col=8'b11011111; end
			3: begin col=8'b11101111; end
			4: begin col=8'b11110111; end
			5: begin col=8'b11111011; end
			6: begin col=8'b11111101; end
			7: begin col=8'b11111110; end
		endcase
		case(figure)
			0: begin//左转
				case(count)
					0: begin row=8'b00011000; end
					1: begin row=8'b00111100; end
					2: begin row=8'b01100110; end
					3: begin row=8'b11011011; end
					4: begin row=8'b10111101; end
					5: begin row=8'b01100110; end
					6: begin row=8'b11000011; end
					7: begin row=8'b10000001; end
				endcase
			end
			1: begin//右转
				case(count)
					7: begin row=8'b00011000; end
					6: begin row=8'b00111100; end
					5: begin row=8'b01100110; end
					4: begin row=8'b11011011; end
					3: begin row=8'b10111101; end
					2: begin row=8'b01100110; end
					1: begin row=8'b11000011; end
					0: begin row=8'b10000001; end
				endcase
			end
			2: begin//直行
				case(count)
					0: begin row=8'b00011011; end
					1: begin row=8'b00110110; end
					2: begin row=8'b01101100; end
					3: begin row=8'b11011000; end
					4: begin row=8'b11011000; end
					5: begin row=8'b01101100; end
					6: begin row=8'b00110110; end
					7: begin row=8'b00011011; end
				endcase
			end
			3: begin//停止
				case(count)
					0: begin row=8'b00111100; end
					1: begin row=8'b01011010; end
					2: begin row=8'b10011001; end
					3: begin row=8'b10011001; end
					4: begin row=8'b10011001; end
					5: begin row=8'b10011001; end
					6: begin row=8'b01011010; end
					7: begin row=8'b00111100; end
				endcase
			end
			4: begin//倒车
				case(count)
					0: begin row=8'b11011000; end
					1: begin row=8'b01101100; end
					2: begin row=8'b00110110; end
					3: begin row=8'b00011011; end
					4: begin row=8'b00011011; end
					5: begin row=8'b00110110; end
					6: begin row=8'b01101100; end
					7: begin row=8'b11011000; end
				endcase
			end
			default: row=0;
		endcase
	end
endmodule