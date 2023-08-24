vsim mux53
add wave -divider "Input Select"
add wave s
add wave -divider "Inputs"
add wave u v w x y
add wave -divider "Outputs"
add wave m
force u 000
force v 001
force w 010
force x 011
force y 100
force -repeat 20 {s[0]} 0 0,1 10
force -repeat 40 {s[1]} 0 0,1 20
force -repeat 80 {s[2]} 0 0,1 40
run 80
wave zoom full
