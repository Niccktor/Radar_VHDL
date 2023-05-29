set_property PACKAGE_PIN W5 [get_ports CLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK]


set_property PACKAGE_PIN J1 [get_ports Trig]							
	set_property IOSTANDARD LVCMOS33 [get_ports Trig]
set_property PACKAGE_PIN L2 [get_ports Echo]							
	set_property IOSTANDARD LVCMOS33 [get_ports Echo]




set_property PACKAGE_PIN U2 [get_ports {AN0}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {AN0}]
set_property PACKAGE_PIN U4 [get_ports {AN1}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {AN1}]
set_property PACKAGE_PIN V4 [get_ports {AN2}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {AN2}]    
set_property PACKAGE_PIN W4 [get_ports {AN3}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {AN3}]    
    
    
# Afficheur 7 segments  
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
set_property PACKAGE_PIN V7 [get_ports {segments[7]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segments[7]}]



#set_property PACKAGE_PIN J2 [get_ports {Reset}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {Reset}]
    
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 0 [current_design]