module mod;
reg [3:0] x1,x2,x3;
initial begin 
  x1=4'b0000;
  x2=4'b0000;
  x3=4'b0000;
end 
initial begin 
#4 x1=6;
#2 x2=4;
end 
initial begin 
  #4 x1=2;
  #2 x2=3;  // this statement will create race arround condition 
    x3=1;
  end 
  initial begin 
    $monitor(" time = %0t x1= %0d x2= %0d x3= %0d",$time, x1,x2,x3);
  end 
  endmodule 


