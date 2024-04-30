module four_bit_adder_tb ();
reg [3:0] A,B;
reg c_in;
wire c_out;
wire [3:0] sum_res;

four_bit_adder f1(.A(A),.B(B),.c_in(c_in),.c_out(c_out), .sum_res(sum_res));

initial
begin 
A=4'HF; B=4'HA; c_in=1'b1; #10;
A=4'H1; B=4'H8; c_in=1'b0; #10;
A=4'H5; B=4'H7; c_in=1'b1; #10;
A=4'H9; B=4'H3; c_in=1'b0; #10;
A=4'HB; B=4'H2; c_in=1'b1; #10;
A=4'HC; B=4'HD; c_in=1'b0; #10;
A=4'HE; B=4'HE; c_in=1'b1; #10;
$stop();
end


endmodule