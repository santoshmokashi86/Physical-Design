read_libs /home/installs/SCL180/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib
read_hdl FIFO.v
elaborate
source FIFO.sdc
synthesize -to_mapped
write_hdl > fifo_netlist.v
