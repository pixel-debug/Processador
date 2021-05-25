module portaAND ( x, y, out); // declaração do nome do módulo AND
	input[7:0] x, y; 
	output [7:0] out;

	initial begin
		$display("Testando porta ...");
		$monitor(" x = %b  y = %b 	out = %b ", x, y, out );	
		end
	assign out = x & y;

endmodule 