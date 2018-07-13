module main(clk_100k, key, getkey, msg, getmsg, infra, data, senddata, digit, beep, figure);
	input clk_100k;
	input [3:0] key;
	input getkey;
	input [7:0] msg;
	input getmsg;
	input infra;
	output reg[7:0] data;
	output reg senddata;
	output reg[15:0] digit;
	output reg beep;
	output reg[2:0] figure;
	
	reg[31:0] buffer1;
	reg[31:0] buffer2;
	reg lastgetkey;
	reg lastgetmsg;
	reg lastinfra;
	reg setspeed;
	reg [7:0] speed;
	reg [4:0] cnt;
	reg [2:0] laststate;
	initial begin
		buffer1=0;
		buffer2=0;
		setspeed=0;
		digit=0;
		figure=1;
	end
	/*
	receiveData;
	模式1:(完全控制)
	1:0 00,11 停, 10高速, 01低速
	3:2 00,11向直行, 01右转, 10左转
	4 0 正转, 1反转
	7:5 001
	模式2:(调速模式)
	5:0 速度
	7:6 01
	模式3: (功能模式)
	1:0 走黑线00, 靠墙走01, 自动停车10, 11没听懂
	7:2 101010

	模式4: (自己去玩吧)
	7:5 110x
	*/ 
	always@(posedge clk_100k) begin
		if(senddata==1) begin
			cnt=cnt+1;
			if(cnt==30) begin
				senddata=0;
				cnt=0;
				if(laststate!=0) begin
					data[7:5]=laststate;
					laststate=0;
				end
			end
		end
		if(lastinfra==1&&infra==0&&beep==1) beep=0;
		if(lastgetmsg!=getmsg&&getmsg==1) begin
			buffer1={buffer1[23:0], buffer2[31:24]};
			buffer2={buffer2[23:0], msg};
			//buffer2=buffer2+data;
			if(buffer2[15:0]==16'h0D0A) begin
				/*
				byte3: 5:4 方向，左10，右00，前01；
				third[7:0]={1'b0,direction,temp,4'b1010};
				*/
				if(setspeed==0) digit=buffer1[31:16];
				if(buffer1[11:8]==4'b1010) begin
					if(buffer1[31:24]==0) figure=3;
					else if(buffer1[14]==0) figure=4;
					else begin
						case(buffer1[13:12])
							0: begin figure=1; end
							1: begin figure=2; end
							2: begin figure=0; end
							default: figure=7;
						endcase
					end
				end
				else figure=7;
				//dist=buffer2/256;
				//speed=buffer2%256;
			end
			else begin
				;
			end
		end
		if(lastgetkey!=getkey&&getkey==1) begin
			if(setspeed==0) begin
				case(key)
				'd0: begin data=8'b00100000; senddata=1; beep=1; end//停;完全控制
				'd1: begin data[7:2]=6'b101010; end//功能模式
				'd2: begin data[7:5]=3'b110; senddata=1; end//自动行驶
				'd4: begin data[1:0]=2'b00; senddata=1; end//停，走黑线
				'd5: begin data[1:0]=2'b01; senddata=1; end//低速，靠墙走
				'd6: begin data[1:0]=2'b10; senddata=1; end//高速，自动停车
				'd7: begin data[1:0]=2'b11; senddata=1; end//停，11 v                                                                                                                                                                                              
				'd8: begin data[3:2]=2'b10; senddata=1; end//左转
				'd9: begin data[3:2]=2'b00; senddata=1; end//直行
				'd10: begin data[3:2]=2'b01; senddata=1; end//右转
				'd12: begin laststate=data[7:5]; setspeed=1; digit[7:0]=speed; end
				'd13: begin data[4]=~data[4]; senddata=1; end//转换方向
				endcase
			end
			else begin
				case(key)
				'd0: begin speed=(speed%10)*10+1; end
				'd1: begin speed=(speed%10)*10+2; end
				'd2: begin speed=(speed%10)*10+3; end
				'd4: begin speed=(speed%10)*10+4; end
				'd5: begin speed=(speed%10)*10+5; end
				'd6: begin speed=(speed%10)*10+6; end
				'd8: begin speed=(speed%10)*10+7; end
				'd9: begin speed=(speed%10)*10+8; end
				'd10: begin speed=(speed%10)*10+9; end
				'd14: begin data[7:6]=2'b01; data[5:0]=speed[5:0]; senddata=1; setspeed=0; speed=0; end
				'd13: begin speed=(speed%10)*10; end
				endcase
				if(speed>60) speed=60;
			digit[7:0]=speed;
			end
		end
		lastgetkey=getkey;
		lastgetmsg=getmsg;
		lastinfra=infra;
	end
endmodule