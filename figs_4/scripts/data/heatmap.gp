# Gnuplot script to plot 2D Colored Heatmap
# Data without blank line separators
#reset
#unset label
#unset key
set term postscript eps enhanced color 24
set term post "LMRomanDemi10-Regular" 14
#set term postscript eps color solid
#set title "Temperature Distribution (Celcius)"
#set xlabel "x (meter)"
#set ylabel "y (meter)"
#set terminal wxt size 700,400 font "Verdana,10"
#set size ratio -1
set title noenhanced
set ylabel "Router number" offset 1.2,2 font ",14"
set xlabel "Port number" offset 1.2,0 font ",14"
set palette rgbformulae 22,13,-31
set xrange [0:15]
set yrange [0:31]
#set xtics 0.2
#set ytics 0.2
#set border 3 back ls 100
set xtics nomirror
set ytics nomirror
set size ratio 1
set lmargin 7.3
set rmargin 9.3
set bmargin 9.5
#set offset -0.6,-0.4,0,0
set output "static_core.eps"
plot 'static_core.dat' u 1:2:3 with image
