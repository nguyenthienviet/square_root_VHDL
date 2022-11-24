onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 25 /tb_square_root/clk
add wave -noupdate -height 25 /tb_square_root/rst
add wave -noupdate -color Red -height 25 /tb_square_root/start
add wave -noupdate -height 25 -radix unsigned /tb_square_root/X
add wave -noupdate -height 25 -radix unsigned /tb_square_root/Result
add wave -noupdate -color Yellow -height 25 /tb_square_root/finished
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2766782 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 194
configure wave -valuecolwidth 88
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
WaveRestoreZoom {0 ps} {3448965 ps}
