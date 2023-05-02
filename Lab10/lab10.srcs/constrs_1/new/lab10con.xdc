

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

##7 segment display
set_property PACKAGE_PIN W7 [get_ports {segments[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[0]}]
set_property PACKAGE_PIN W6 [get_ports {segments[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[1]}]
set_property PACKAGE_PIN U8 [get_ports {segments[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[2]}]
set_property PACKAGE_PIN V8 [get_ports {segments[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[3]}]
set_property PACKAGE_PIN U5 [get_ports {segments[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[4]}]
set_property PACKAGE_PIN V5 [get_ports {segments[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[5]}]
set_property PACKAGE_PIN U7 [get_ports {segments[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segments[6]}]
	
##Anodes
set_property PACKAGE_PIN U2 [get_ports {anodes[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[0]}]
set_property PACKAGE_PIN U4 [get_ports {anodes[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[1]}]
set_property PACKAGE_PIN V4 [get_ports {anodes[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[2]}]
set_property PACKAGE_PIN W4 [get_ports {anodes[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anodes[3]}]
	
## Switches
set_property PACKAGE_PIN V17 [get_ports {initial_val_n[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_val_n[0]}]
set_property PACKAGE_PIN V16 [get_ports {initial_val_n[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_val_n[1]}]
set_property PACKAGE_PIN W16 [get_ports {initial_val_n[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_val_n[2]}]
set_property PACKAGE_PIN W17 [get_ports {initial_val_n[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_val_n[3]}]
set_property PACKAGE_PIN W15 [get_ports {enable_n[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports enable_n[4]}]
set_property PACKAGE_PIN V15 [get_ports {load_n[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load_n[5]}]
set_property PACKAGE_PIN W14 [get_ports {clear_n[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clear_n[6]}]
	