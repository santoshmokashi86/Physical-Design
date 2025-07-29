read_libs /home/installs/SCL180/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib
read_hdl MultiPhaseClock.v
elaborate
synthesize -to_mapped
write_hdl > MultiPhaseClock_netlist.v
