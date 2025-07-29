read_libs /home/installs/SCL180/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib
read_hdl design_with_multipleclk.v
elaborate
source create_clock.sdc
synthesize -to_mapped
write_hdl > design_with_multipleclk_netlist.v
