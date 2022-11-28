onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_square_root/clk
add wave -noupdate /tb_square_root/rst
add wave -noupdate /tb_square_root/start
add wave -noupdate -radix unsigned /tb_square_root/X
add wave -noupdate -radix unsigned /tb_square_root/Result
add wave -noupdate /tb_square_root/finished
add wave -noupdate /tb_square_root/rom
add wave -noupdate /tb_square_root/cnt
add wave -noupdate /tb_square_root/timer
add wave -noupdate -radix decimal /tb_square_root/process_time
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2606014 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {2507936 ps} {3164186 ps}
