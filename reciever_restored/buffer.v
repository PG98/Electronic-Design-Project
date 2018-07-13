module buffer(recieve, data, dist, speed, byte_3);
	input recieve;
	input [7:0] data;
	output reg[7:0] dist;
	output reg[7:0] speed;
	output reg[4:0] byte_3;
	reg[31:0] buffer2;
	reg c;
	reg[31:0] buffer1;
	initial begin
		buffer1=0;
		buffer2=0;
		byte_3=0;
		dist<=0;
		speed<=0;
		byte_3=0;
	end
	always@(posedge recieve) begin
		buffer1={buffer1[23:0], buffer2[31:24]};
		buffer2={buffer2[23:0], data};
		//buffer2=buffer2+data;
		if(buffer2[15:0]==16'h0D0A) begin
			byte_3=buffer1[13:9];
			dist<=buffer1[31:24];//25'h1000000
			speed<=buffer1[23:16];
			//dist=buffer2/256;
			//speed=buffer2%256;
		end
		else begin
			dist<=8'hFF;
			speed<=8'hFF;
		end
		//dist=buffer2/256;
		//speed=buffer2%256;
	end
endmodule