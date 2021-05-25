transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/portaAND.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/controleUnit.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/adder.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/ulaControl.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/ula.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/registradores.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/pc.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/mux21.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/extensor.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/processador.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/memoria_dados.v}
vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/memoria.v}

vlog -vlog01compat -work work +incdir+C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc {C:/marinaSD/Aula-10-Lab-AOC1_marina-bernardes-diniz/nRisc/test_processador.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test_processador

add wave *
view structure
view signals
run -all
