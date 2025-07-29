
create_clock -name clk -period 10.0 [get_ports clk]
# Slew on all input ports
#set_input_transition -clock clk -max 0.5 -min 0.2 [get_ports -filter {direction == "INPUT"}]
# Output capacitive loading
#set_load -max 5.0 -min 3.0 [get_ports -filter {direction == "OUTPUT"}]
# I/O timing relative to clock (for setup/hold)
#set_input_delay  -clock clk -max 4.5 -min 1.0 [get_ports -filter {direction == "INPUT"}]
#set_output_delay -clock clk -max 3.0 -min -1.0 [get_ports -filter {direction == "OUTPUT"}]
