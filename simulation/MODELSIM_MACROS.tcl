#clear the main window
#vsim  .main clear


vsim work.foolaround2
#add wave -position insertpoint sim:/foolaround2/*

# vsim work.counterverilog_tb
# add wave -position insertpoint sim:/counterverilog_tb/U0/*

run 50 ns
wave zoom full

# vsim work.fft_atan2_v1_vhd_tst
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/u6/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/b2v_inst/*
# run
# wave zoom full