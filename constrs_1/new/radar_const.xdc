set_property PACKAGE_PIN W5 [get_ports CLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
set_property PACKAGE_PIN L2 [get_ports {Echo}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Echo}]
    
set_property PACKAGE_PIN J1 [get_ports {Trig}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Trig}]

#set_property PACKAGE_PIN J2 [get_ports {Reset}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {Reset}]
    
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 0 [current_design]