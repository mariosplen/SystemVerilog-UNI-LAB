vsim nand41
add wave -divider Inputs
add wave -height 30 -color #6F1AD1 a -color #317523 b -color #E6D706 c -color #DEE2CA d
force -repeat 20 a 0 0,1 10
force -repeat 40 b 0 0,1 20
force -repeat 80 c 0 0,1 40
force -repeat 160 d 0 0,1 80
add wave -divider Outputs
add wave -height 30 -color #FD0707 y
run 160
wave zoom full
