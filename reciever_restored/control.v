module control(clk_10k, Q, valid, command, send);
	input clk_10k;
	input [3:0] Q;
	input valid;
	output reg[7:0] command;
	output reg send;
	reg lastvalid;
	/*
	receiveData;
	1:0 00,11 停, 10高速, 01低速
	3:2 00,11向直行, 01右转, 10左转
	4 0 正转, 1反转
	5 0自己控制,1的时候听指挥
	7:6 10(校验)
	*/ 
	
	initial begin
		command=8'b10000000;
		send=0;
	end
	always@(posedge clk_10k) begin
		if(send==1) send=0;
		if(valid!=lastvalid&&valid==1) begin 
		case(Q)
			'd4: begin command[1:0]=2'b00; send=1; end//停
			'd5: begin command[1:0]=2'b01; send=1; end//低速
			'd6: begin command[1:0]=2'b10; send=1; end//高速
			'd8: begin command[3:2]=2'b10; send=1; end//左转
			'd9: begin command[3:2]=2'b00; send=1; end//直行
			'd10: begin command[3:2]=2'b01; send=1; end//右转
			'd12: begin command[5]=~command[5]; send=1; end//转换控制
			'd13: begin command[4]=~command[4]; send=1; end//转换方向
			'd14: begin command=8'b10000000; send=1; end//复原
		endcase
		end
		lastvalid=valid;
	end
endmodule