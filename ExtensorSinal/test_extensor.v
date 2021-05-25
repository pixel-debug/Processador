module test_extensor;
	 reg [2:0] TB_in;
    wire [7:0] TB_out;
	 extensor gate(TB_in, TB_out);
	 initial begin
        $display("Testando extensor de sinal...");
        $monitor(" tb_in = %b  tb_out = %b ", TB_in, TB_out);
        end
	 initial begin: stop_at
		#20 $stop;
	end
	initial begin: Init
		TB_in = 3'b000;
	end
	always begin: main_process
		#1 TB_in = 3'b001;
		#2 TB_in = 3'b010;
		#3 TB_in = 3'b011;
		#4 TB_in = 3'b100;
		#5 TB_in = 3'b110;
		#6 TB_in = 3'b111;
		end
endmodule


   
    