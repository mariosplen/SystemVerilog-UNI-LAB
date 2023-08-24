vsim segprm
add wave -divider "Inputs"
add wave D A E F
add wave -divider "Segment Display"
add wave sevenseg
force -repeat 40 F 0 0,1 20
force -repeat 80 E 0 0,1 40
force -repeat 160 A 0 0,1 80
force -repeat 320 D 0 0,1 160
run 320
wave zoom full
