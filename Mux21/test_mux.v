module test_mux;
    reg TB_sinal;
    reg [7:0]TB_a, TB_b;
    wire [7:0]TB_out;

    mux21 gate(TB_a, TB_b, TB_out, TB_sinal);

    initial begin

        $display("Testando MUX...");
        $monitor(" sinal = %b     a = %b  b = %b  saida 1 = %b ", TB_sinal, TB_a,TB_b, TB_out);
        end

    initial
        begin
            TB_a = 8'b00101101; TB_b = 8'b00101110; TB_sinal = 1'b0; #20
            TB_a = 8'b10100101; TB_b = 8'b01001110; TB_sinal = 1'b1; #20
            TB_a = 8'b10111001; TB_b = 8'b00111111; TB_sinal = 1'b0; #20
            TB_a = 8'b00111000; TB_b = 8'b00100001; TB_sinal = 1'b1; #20;
        end
endmodule