module mux21(a,b, out, sinal);
	input[7:0]a,b;
	input sinal;
	output reg [7:0] out;
	
	   initial begin

        $display("Testando MUX...");
        $monitor(" sinal = %b     a = %b  b = %b  saida 1 = %b ", sinal, a, b,out);
        end
	
	
	always@(*)
		begin case(sinal)
					1'b0: out = a;
					1'b1: out = b;
				endcase
		end
endmodule



