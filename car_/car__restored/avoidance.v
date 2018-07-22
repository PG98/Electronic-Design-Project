module avoidance  //避障模块
(
 input clk,
 input[7:0] dist_m, //中距离(脉冲数量)
 input[7:0] dist_r, //右距离(脉冲数量)
 input[7:0] dist_l,  //左距离(脉冲数量)
 output reg [7:0] degree,//转弯控制
 output reg mode, //电机状态控制
 output reg [7:0] speed  //车速控制 
);

reg [7:0] limit=30;   //cm
reg [7:0] ex=10;    
always@(posedge clk)
begin
 if(dist_m > limit)        //若前方畅通，则根据左右距离实现避障
	begin
	speed <= 15;
	if(dist_r > limit && dist_l > limit)    //若左右距离均大于限制，则直行即可
		begin
		degree <= 60;
		mode <= 1;
		//speed <= 20;
		end
	  else if((dist_r < limit && dist_r > ex)&&(dist_l > limit))    //若右侧距离小于限制，左侧距离大于限制，则向左转弯
	  begin
		degree <= 90;
		mode <= 1;
		//speed <= 20;
	  end
	  else if((dist_l < limit && dist_l > ex)&&(dist_r > limit))    //若左侧距离小于限制，右侧距离大于限制，则向右转弯
	  begin 
		 degree <= 30;
		 mode <= 1;
		 //speed <= 20;
	  end
	  else 
	  begin                                    //若左侧右侧均不可转弯，则直向倒车，直到右侧或左侧可以转弯为止
		degree <= 60;
		mode <= 0;
		//speed <= 20;
	  end
 end
 else if(dist_m <limit && dist_m > ex)  //前方远处有障碍物
 begin
  if(dist_r > limit)                     //右侧距离大于限制，则向右转弯
   begin
   degree <= 30;
   mode <= 1;
   //speed <= 20;
   end
  else if((dist_r < limit && dist_r > ex)&&(dist_l > limit))  //右侧距离小于限制，左侧距离大于限制，则向左转弯
  begin
   degree <= 90;
   mode <= 1;
   //speed <= 20;
  end
  else
  begin
   degree <= 60;                      //其他情况，直向倒车
   mode <= 0;
   //speed <= 20;
  end
 end
 else             //障碍物接近 无法避过，直行倒车
 begin
  degree <= 60;
  mode <= 0;
  //speed <= 20;
 end
end

endmodule
