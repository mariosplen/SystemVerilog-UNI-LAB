vsim mux28bit
add wave -divider "Input Select"
add wave -height 30 -color #6F1AD1 s
add wave -divider "Inputs"
add wave -height 30 -color #317523 x -color #E6D706 y
add wave -divider Outputs
add wave -height 30 m
force x 10101010
force y 11100111
force -repeat 40 s 0 0,1 20
run 40
wave zoom full
