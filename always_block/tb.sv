module tb;
reg x1,x2,x3;
wire z;
mod des(x1,x2,x3,z);
initial begin 
  $monitor("Time = %0t x1=%0b x2 = %0b x3 =%0b z=%0b", $time, x1,x2,x3,z);
end 
initial begin 
  x1=0;x2=1;x3=1;
#3 x1=3;x2=0;
#4 x1=4;x3=1;
end 
endmodule 
