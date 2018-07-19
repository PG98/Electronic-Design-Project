module testSpeed2(input signal, input clk, output reg [13:0] count1, output reg [3:0] AX,BX,CX,DX);
reg [13:0] count;
reg [13:0] tt;//一段时间后重置
reg rest;
reg state;
always@(posedge signal)begin//1s内转的圈数
 if(clk == 1)begin
  count<=count+1;
 end
 if(clk == 0)begin
  count<=0;
 end
 
end

always@(negedge clk)begin//输出转速
case(state)
 0: 
 begin
  DX <= (count1*176)%10;
  CX <= (count1*176/10)%10;
  BX <= (count1*176/100)%10;
  AX <= count1*176/1000;
  count1<=count;
  if(count==count1)begin
   tt <= tt+1;
   if(tt == 3)begin
    tt <= 0;
    state<=1;
   end
  end
  else begin
   tt<=0;
  end
 end
 1:
 begin
  DX <= 0;
  CX <= 0;
  BX <= 0;
  AX <= 0;
  if(count != 0 )begin
   state<=0;count1 <= 0;
  end
  else begin
   state<=1;
  end
 end
endcase
 
end



endmodule