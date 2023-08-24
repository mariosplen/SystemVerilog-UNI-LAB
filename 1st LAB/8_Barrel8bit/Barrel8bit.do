vsim Barrel8bit
force a 8'b00001111
add wave -divider "Start value"
add wave a
add wave -divider "Number of shifts"
add wave amt
add wave -divider "All shifts"
add wave LSL LSR ASR ROR
add wave -divider "Type of shift to do"
add wave opbarrel
add wave -divider "Output"
add wave rmout
force amt 3'b001
force opbarrel 00
run 50
force opbarrel 01
run 50
force opbarrel 10
run 50
force opbarrel 11
run 50
wave zoom full
