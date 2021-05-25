module test_registradores();
	reg [2:0] TB_reg1, TB_reg2, TB_regE;
	reg TB_clock,  TB_reset, TB_escrita;
	reg [7:0] TB_EscData;
	wire[7:0] TB_out1, TB_out2;
	
	registradores gate(TB_reg1,TB_reg2,TB_regE,TB_EscData,TB_escrita,TB_out1,TB_out2,TB_clock, TB_reset);
	initial begin: stop_at
		#40 $stop;
		
	end
	
	initial begin: Init
		TB_clock = 0;
		TB_reset = 0;
		TB_EscData = 1;
		TB_regE = 0;
		TB_reg1 = 0;
		TB_reg2 = 0;
		TB_escrita = 1;
		
		
	end
	
	always begin: main_process
		#1 TB_clock = TB_clock + 1;
		#1 TB_EscData <= 1'b 01000011;
		#2 TB_reset = 1;
		end
endmodule 
	
	
	
