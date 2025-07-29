# Define clock with 10 ns period => 100 MHz
create_clock -name clk -period 10.0 [get_ports clk]

# Set clock uncertainty (optional but recommended)
set_clock_uncertainty 0.2 [get_clocks clk]

# Set input and output delays relative to the clock
# (Assume external delay of 2 ns for example)
set_input_delay 2.0 -clock clk [get_ports din]
set_output_delay 2.0 -clock clk [get_ports dout]

# Set input delay for control signals
set_input_delay 2.0 -clock clk [get_ports wr_en]
set_input_delay 2.0 -clock clk [get_ports rd_en]
set_input_delay 2.0 -clock clk [get_ports rst_n]

# Set output delay for status signals
set_output_delay 2.0 -clock clk [get_ports full]
set_output_delay 2.0 -clock clk [get_ports empty]

# Declare asynchronous reset
set_false_path -from [get_ports rst_n]
