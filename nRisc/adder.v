module adder(in1, in2, out);
   input [7:0] in1, in2;
   output reg[7:0] out;
	
	 initial begin
        $display("Testando ADDER...");
        $monitor(" in 1 = %b   in 2 = %b  saida = %b ", in1, in2, out);
        end
	
   always @(*)
     out <= in1 + in2;
endmodule