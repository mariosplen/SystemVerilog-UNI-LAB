vsim CompFlags
add wave -divider Inputs
add wave -height 30 -color #6F1AD1 C -color #317523 N -color #E6D706 V -color #DEE2CA Z
force -repeat 20 x 0 0,1 10
force -repeat 40 y 0 0,1 20
force -repeat 80 V 0 0,1 40
force -repeat 160 Z 0 0,1 80
add wave -divider Outputs
add wave -height 30 HS LS HI LO GE LE GT LT
run 160
wave zoom full
