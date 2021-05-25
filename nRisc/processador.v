module processador(clk, reset);
	input clk, reset ;
	// REGISTRADORES
	wire[2:0] regi1,reg2,regid;
	// SAIDAS
	wire[7:0] volta_pc, instrucao,out_j, extensor_out_jump,pc_out,out_jump, somador_out,out_dados_escritos, dadosEscritos,memoria_out;
	wire [7:0]	Dados1, Dados2,out_and, controle, extensor_out, out_mux_to_ula,out_controle,escrito, label_memoria, out_ula;
	// SINAIS
	wire[7:0] escrita_sinal, escritaPC_sinal,ulaFonte_sinal, ulaOP_sinal, pula_sinal, regFonte_sinal, comparador_sinal;
	wire[7:0] 	lerMemo_sinal, escreveMemo_sinal;
	wire zero;
	
	
	programCounter pc(clk, volta_pc, escritaPC_sinal, pc_out, reset);
	adder somador1(pc_out, 8'b00000001, somador_out);
	memoria memo( pc_out, clk, instrucao, reset);
	controleUnit control(instrucao, clk, reset,escrita_sinal, escritaPC_sinal,ulaFonte_sinal, ulaOP_sinal, pula_sinal,
								regFonte_sinal, comparador_sinal,lerMemo_sinal, escreveMemo_sinal);
	
	registradores registr(regi1, regi2, regid,dadosEscritos,escrita_sinal,Dados1,Dados2,clock, reset);
	
	extensor extend(controle, extensor_out);
	mux21 mux_regi(Dados2, extensor_out, out_mux_to_ula, ulaFonte_sinal);
	
	ulaControl ULAcontrol(ulaOP_sinal, instrucao[3:0],instrucao[1:0], out_controle);
	ula ulita(out_controle, out_mux_to_ula, Dados1, out_ula, zero);
	
	// saída ULA = RESULTADO
	memoria_dados memoData(label_memoria, Dados1, memoria_out, clk, reset, lerMemo_sinal, escreveMemo_sinal);
	mux21 mux_mem(out_ula, memoria_out, out_dados_escritos, regFonte_sinal);
	
	// saída ULA = zero
	
	portaAND door_and( out_ula, comparador_sinal, out_and);
	mux21 mux_jump(out_and, extensor_out, out_jump, 1);
	extensor jump(controle, extensor_out_jump);
	
	mux21 mux_jumper(out_jump, extensor_out_jump,out_j, pula_sinal);
	adder somador2 (out_j, somador_out, volta_pc);

endmodule