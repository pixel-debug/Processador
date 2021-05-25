module test_jumper();
	reg [7:0] TB_label;
	wire [7:0] TB_label_extendido;
	
	jumper gate(TB_label, TB_label_extendido);


	initial begin: stop_at
		#20 $stop;
	end
	
	initial begin
		$display("Testando JUMPER ...");
		$monitor(" Endereco = %b  saido = %b ", TB_label, TB_label_extendido );	
		end
	
	initial begin: Init
		TB_label = 0;
		
	end
	
	always begin: main_process
		#1 TB_label = TB_label + 1;
	end
endmodule 
	
	
	
