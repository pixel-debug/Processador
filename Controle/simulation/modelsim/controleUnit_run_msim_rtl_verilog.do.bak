transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/marinaSD/PROCESSADOR/Aula-9-Lab-AOC1_marina-bernardes-diniz/Controle {C:/marinaSD/PROCESSADOR/Aula-9-Lab-AOC1_marina-bernardes-diniz/Controle/controleUnit.v}

vlog -vlog01compat -work work +incdir+C:/marinaSD/PROCESSADOR/Aula-9-Lab-AOC1_marina-bernardes-diniz/Controle {C:/marinaSD/PROCESSADOR/Aula-9-Lab-AOC1_marina-bernardes-diniz/Controle/test_controle.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test_controle

add wave *
view structure
view signals
run -all
