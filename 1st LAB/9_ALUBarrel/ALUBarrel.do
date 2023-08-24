vsim ALUBarrel
add wave -divider "Barrel inputs"
add wave -radix hex opbarrel amt 
add wave -divider "Inputs"
add wave -radix hex Rn Rm ALUControl
add wave -divider "Outputs"
add wave -radix hex Rd
virtual signal { N & Z & V & C } NZVC_Concatenated
add wave -radix hex NZVC_Concatenated
add wave -group "Condition Codes" -format literal HS LS HI LO GE LE GT LT
force opbarrel 'b00
force amt 'b000

#   ADD 0+0 
force ALUControl 'h0 
force Rn 'h00
force Rm 'h00
run 10

#   ADD 0+(-1) 
force Rm 'hFF		 
run 10

#   ADD 1+(-1)
force Rn 'h01		 
run 10

#   ADD FF+1 
force Rn 'hFF		 
force Rm 'h01
run 10

#   SUB 0-0
force ALUControl 'h1 
force Rn 'h00
force Rm 'h00
run 10

#   SUB 0-(-1) 
force Rm 'hFF         
run 10

#   SUB 1-1
force Rn 'h01         
force Rm 'h01
run 10

#   SUB 80-1
force Rn 'h80         
run 10

#   AND FF, FF
force Rn 'hFF         
force Rm 'hFF
force ALUControl 'h2
run 10

#   AND FF, 78
force Rm 'h78         
run 10

#   AND 78, 21
force Rn 'h78         
force Rm 'h21
run 10

#   AND 00, FF
force Rn 'h00         
force Rm 'hFF
run 10

#   OR FF, FF
force ALUControl 'h3 
force Rn 'hFF
run 10

#   OR 78, 21
force Rn 'h78         
force Rm 'h21
run 10

#   OR 00, FF
force Rm 'hFF         
force Rn 'h00
run 10

#   OR 00, 00
force Rm 'h00         
run 10

wave zoom full