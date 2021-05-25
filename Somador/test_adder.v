module test_adder;
   reg [7:0] TB_in1, TB_in2;
   wire[7:0] TB_out;
	adder gate(TB_in1, TB_in2, TB_out);
	 initial begin
        $display("Testando ADDER...");
        $monitor(" in 1 = %b   in 2 = %b  saida = %b ", TB_in1, TB_in2, TB_out);
        end
	initial begin: stop_at
		#40 $stop;
	end
	initial begin: Init
		TB_in1 = 8'b00000000;
		TB_in2 = 8'b00000000;		
	end
	always begin: main_process
		#1 TB_in1 = 8'b00000001;
		#1 TB_in2 = 8'b00000001;
		#2 TB_in1 = 8'b00000010;
		#2 TB_in2 = 8'b00000010;
		end
endmodule 
	
	