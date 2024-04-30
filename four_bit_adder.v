module four_bit_adder#(parameter n_bit=4)(input wire [n_bit-1:0] A, B, 
										input wire c_in,
										output wire c_out,
										output wire [n_bit-1:0] sum_res);
										
wire [n_bit-2:0] int_carry;


FA U1(.a(A[0]),.b(B[0]), .c_in(c_in), .sum(sum_res[0]), .c_out(int_carry[0]));
FA U2(.a(A[1]),.b(B[1]), .c_in(int_carry[0]), .sum(sum_res[1]), .c_out(int_carry[1]));
FA U3(.a(A[2]),.b(B[2]), .c_in(int_carry[1]), .sum(sum_res[2]), .c_out(int_carry[2]));
FA U4(.a(A[3]),.b(B[3]), .c_in(int_carry[2]), .sum(sum_res[3]), .c_out(c_out));										

							
endmodule