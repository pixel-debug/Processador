transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/marinaSD/PROCESSADOR/Aula-8-Lab-AOC1_marina-bernardes-diniz/jumper {C:/marinaSD/PROCESSADOR/Aula-8-Lab-AOC1_marina-bernardes-diniz/jumper/jumper.v}

vlog -vlog01compat -work work +incdir+C:/marinaSD/PROCESSADOR/Aula-8-Lab-AOC1_marina-bernardes-diniz/jumper {C:/marinaSD/PROCESSADOR/Aula-8-Lab-AOC1_marina-bernardes-diniz/jumper/test_jumper.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test_jumper

add wave *
view structure
view signals
run -all
