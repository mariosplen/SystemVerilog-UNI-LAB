vsim mux28fg
add wave -divider "Input Select"
add wave s
add wave -divider "Inputs"
add wave -color #317523 x -color #E6D706 y
add wave -divider Outputs
add wave m
force x 10101010
force y 11100111
force -repeat 40 s 0 0,1 20
run 40
wave zoom full
