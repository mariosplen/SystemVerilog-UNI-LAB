vsim gdlatch
add wave Clk D Q
force -repeat 100 D 0 0, 1 50
force -repeat 50 Clk 0 0, 1 25
run 100
