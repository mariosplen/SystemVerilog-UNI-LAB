vsim msdff
add wave D Clock Q Qbar
force -repeat 50 Clock 0 0, 1 25
force -repeat 100 D 0 0, 1 50
run 100
