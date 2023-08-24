vsim Rec
force CK 0
force RESET 1
run 5
force CK 1
run 5
force CK 0
force RESET 0
add wave CK X Z
force -repeat 20 CK 0 0, 1 10
force -repeat 100 X 0 0, 1 30, 0 50, 1 70, 0 90
run 300
wave zoom full
