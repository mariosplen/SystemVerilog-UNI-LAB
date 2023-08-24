vsim alunbit
add wave -divider "ALUControl"
add wave -hex ALUControl
add wave -divider "Inputs"
add wave -hex A -hex B
add wave -divider "Result"
add wave -hex Result
add wave -divider "ALUFlags"
add wave -hex NZCV

#   ADD 0+0 
force ALUControl 'h0 
force A 'h00
force B 'h00
run 10

#   ADD 0+(-1) 
force B 'hFF		 
run 10

#   ADD 1+(-1)
force A 'h01		 
run 10

#   ADD FF+1 
force A 'hFF		 
force B 'h01
run 10

#   SUB 0-0
force ALUControl 'h1 
force A 'h00
force B 'h00
run 10

#   SUB 0-(-1) 
force B 'hFF         
run 10

#   SUB 1-1
force A 'h01         
force B 'h01
run 10

#   SUB 80-1
force A 'h80         
run 10

#   AND FF, FF
force A 'hFF         
force B 'hFF
force ALUControl 'h2
run 10

#   AND FF, 78
force B 'h78         
run 10

#   AND 78, 21
force A 'h78         
force B 'h21
run 10

#   AND 00, FF
force A 'h00         
force B 'hFF
run 10

#   OR FF, FF
force ALUControl 'h3 
force A 'hFF
run 10

#   OR 78, 21
force A 'h78         
force B 'h21
run 10

#   OR 00, FF
force B 'hFF         
force A 'h00
run 10

#   OR 00, 00
force B 'h00         
run 10

wave zoom full
