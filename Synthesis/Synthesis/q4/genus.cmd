# Cadence Genus(TM) Synthesis Solution, Version 20.11-s111_1, built Apr 26 2021 14:57:38

# Date: Fri Jun 27 13:03:26 2025
# Host: cadencesystem39.pes.edu (x86_64 w/Linux 3.10.0-1160.el7.x86_64) (4cores*4cpus*1physical cpu*Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz 6144KB)
# OS:   Red Hat Enterprise Linux Server release 7.9 (Maipo)

source synth.tcl
report
report_timing
report timing abc.txt
ls
ls
report timing > timing_reports.txt
ls
gvim timing_reports
gvim timing_reports.txt
gedit create_clock.sdc
