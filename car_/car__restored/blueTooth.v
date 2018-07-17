module blueTooth(
	input RX_ready,
	input clk_9600,
	output reg [7:0] data
);

reg [1:0] state;
reg [3:0] count;

always@(posedge clk_9600)
begin
	case(state)
		2'b00:begin if(RX_ready == 0) state <= 2'b01; end
		2'b01:begin		
			if(count <= 'd7) 
			begin
				data[count] <= RX_ready;
				count <= count + 1'b1;
			end
			else
				state <= 2'b10;
			end
		2'b10:begin
				count <= 0;
				state <= 2'b00;
			end
		default:state <= 2'b00;
	endcase
end
endmodule