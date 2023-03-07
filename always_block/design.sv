module mod(x1,x2,x3,z);
input x1,x2,x3;
output z;
// Behavioral modelling 

wire x1,x2,x3;
reg   z;
always @(x1 or x2 or x3)
begin 
z=x1|x2|x3;
end 
endmodule 
