/*module FA(input wire a,b, c_in,
				output reg sum, c_out);
				
always@(*) begin 
sum=a^b^c_in;
c_out=(a&b)|((a^b)&c_in);
end

endmodule*/


module FA(input wire a,b, c_in,
				output  sum, c_out);
				
wire w1,w2,w3,w4;
xor x1(w1,a,b);
xor x2(sum,w1,c_in);

and a1(w2,a,b);
and a2(w3,w1,c_in);
or o1(c_out,w3,w2);

endmodule