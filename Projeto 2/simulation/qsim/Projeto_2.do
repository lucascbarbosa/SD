onerror {exit -code 1}
vlib work
vcom -work work Projeto_2.vho
vcom -work work Waveform18.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.switches_vhd_vec_tst
vcd file -direction Projeto_2.msim.vcd
vcd add -internal switches_vhd_vec_tst/*
vcd add -internal switches_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
