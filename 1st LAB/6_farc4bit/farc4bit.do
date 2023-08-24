vsim farc4bit
add wave -divider "Inputs"
add wave a b cin
add wave -divider "Outputs"
add wave s cout
force -repeat 20 {a[0]} 0 0,1 10
force -repeat 40 {a[1]} 0 0,1 20
force -repeat 80 {a[2]} 0 0,1 40
force -repeat 160 {a[3]} 0 0,1 80
force -repeat 320 {b[0]} 0 0,1 160
force -repeat 640 {b[1]} 0 0,1 320
force -repeat 1280 {b[2]} 0 0,1 640
force -repeat 2560 {b[3]} 0 0,1 1280
force -repeat 5120 cin 0 0,1 2560
run 5120
radix signal a unsigned
radix signal b unsigned
radix signal s unsigned
