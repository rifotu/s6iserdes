project new s6axiom.xise

project set "Device Family" "spartan6"

project set "Device" "xc6slx4"

project set "Package" "tqg144"

project set "Speed Grade" "-3"

project set "Synthesis Tool" "XST (VHDL/Verilog)"

project set "Simulator" "ISim (VHDL/Verilog)"



xfile add "../rtl/components.vhd"
xfile add "../rtl/camera.vhd"
xfile add "../rtl/check.vhd"
xfile add "../rtl/lfsr.vhd"
xfile add "../rtl/clock_generator_pll_s8_diff.vhd"
xfile add "../rtl/lvalid_fvalid_gen.vhd"
xfile add "../rtl/nto1_pll_diff_rx.vhd"
xfile add "../rtl/nto1_pll_diff_tx.vhd"
xfile add "../rtl/serdes_1_to_n_clk_pll_s8_diff.vhd"
xfile add "../rtl/serdes_1_to_n_data_s8_diff.vhd"
xfile add "../rtl/serdes_n_to_1_s8_diff.vhd"
xfile add "../rtl/top_s6_axiom.vhd"

xfile add "../ucf/constraints.ucf"


project set "FSM Encoding Algorithm" "Auto" -process "Synthesize - XST"
project set "Safe Implementation" "No" -process "Synthesize - XST"
project set "FSM Style" "LUT" -process "Synthesize - XST"
project set "RAM Extraction" "True" -process "Synthesize - XST"
project set "RAM Style" "Auto" -process "Synthesize - XST"
project set "ROM Extraction" "True" -process "Synthesize - XST"
project set "ROM Style" "Auto" -process "Synthesize - XST"
project set "Resource Sharing" "True" -process "Synthesize - XST"
project set "Asynchronous To Synchronous" "False" -process "Synthesize - XST"
project set "Register Balancing" "No" -process "Synthesize - XST"
project set "Add I/O Buffers" "True" -process "Synthesize - XST"
project set "Max Fanout" "500" -process "Synthesize - XST"
project set "Number of Clock Buffers" "8" -process "Synthesize - XST"
project set "Register Duplication" "True" -process "Synthesize - XST"
project set "Optimize Instantiated Primitives" "False" -process "Synthesize - XST"
project set "Use Clock Enable" "Yes" -process "Synthesize - XST"
project set "Use Synchronous Set" "Yes" -process "Synthesize - XST"
project set "Use Synchronous Reset" "Yes" -process "Synthesize - XST"
project set "Pack I/O Registers into IOBs" "Yes" -process "Synthesize - XST"
project set "Equivalent Register Removal" "True" -process "Synthesize - XST"
project set "Optimization Goal" "Speed" -process "Synthesize - XST"
project set "Optimization Effort" "Normal" -process "Synthesize - XST"
project set "Library Search Order" "../synth/dual_ddr_top.lso" -process "Synthesize - XST"
project set "Keep Hierarchy" "Soft" -process "Synthesize - XST"
project set "Netlist Hierarchy" "As Optimized" -process "Synthesize - XST"
project set "Generate RTL Schematic" "Yes" -process "Synthesize - XST"
project set "Global Optimization Goal" "AllClockNets" -process "Synthesize - XST"
project set "Read Cores" "True" -process "Synthesize - XST"
project set "Write Timing Constraints" "False" -process "Synthesize - XST"
project set "Cross Clock Analysis" "False" -process "Synthesize - XST"
project set "Hierarchy Separator" "/" -process "Synthesize - XST"
project set "Bus Delimiter" "<>" -process "Synthesize - XST"
project set "Case" "Maintain" -process "Synthesize - XST"
project set "BRAM Utilization Ratio" "100" -process "Synthesize - XST"
project set "Automatic BRAM Packing" "False" -process "Synthesize - XST"
project set "Pack I/O Registers/Latches into IOBs" "For Inputs and Outputs" -process Map



project set "Place & Route Effort Level (Overall)" "Standard" -process "Place & Route"

project set "Number of Paths in Error/Verbose Report" "100" -process "Generate Post-Map Static Timing"

project set "Enable Debugging of Serial Mode BitStream" "False" -process "Generate Programming File"
project set "Create Binary Configuration File" "False" -process "Generate Programming File"
project set "Enable Cyclic Redundancy Checking (CRC)" "True" -process "Generate Programming File"
project set "Configuration Rate" "6" -process "Generate Programming File"
project set "Configuration Pin Program" "Pull Up" -process "Generate Programming File"
project set "Configuration Pin Done" "Pull Up" -process "Generate Programming File"
project set "JTAG Pin TCK" "Pull Up" -process "Generate Programming File"
project set "JTAG Pin TDI" "Pull Up" -process "Generate Programming File"
project set "JTAG Pin TDO" "Pull Up" -process "Generate Programming File"
project set "JTAG Pin TMS" "Pull Up" -process "Generate Programming File"
project set "Unused IOB Pins" "Float" -process "Generate Programming File"
project set "UserID Code (8 Digit Hexadecimal)" "0xFFFFFFFF" -process "Generate Programming File"
project set "FPGA Start-Up Clock" "CCLK" -process "Generate Programming File"
project set "Done (Output Events)" "Default (4)" -process "Generate Programming File"
project set "Enable Outputs (Output Events)" "Default (5)" -process "Generate Programming File"
project set "Release Write Enable (Output Events)" "Default (6)" -process "Generate Programming File"
project set "Enable Internal Done Pipe" "False" -process "Generate Programming File"
project set "Drive Done Pin High" "False" -process "Generate Programming File"
project set "Security" "Enable Readback and Reconfiguration" -process "Generate Programming File"

project close


