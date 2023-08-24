vsim rslatch41
add wave Clk
add wave R
add wave S
add wave Q
force Clk 1 0, 1 40, 0 60, 1 80, 0 100
force S 1 0, 0 60, 1 100
force R 0 0, 1 60, 0 100
run 100
