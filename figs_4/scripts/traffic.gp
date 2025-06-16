set term postscript eps enhanced color 24
set term post "LMRomanDemi10-Regular" 14
set title noenhanced
set boxwidth 0.5
set ylabel "Maximum communication \n\n volume (GB)" offset -4, 2 font ",30"
set xlabel "Switch levels" offset 0, -1.2 font ", 30"
set style line 100 lt 1 lc rgb "#606060"
set style line 101 lt 0 lc rgb "#606060"
#set xtics rotate by -45 left
set xtics nomirror
set ytics nomirror
set tics font ",30"
set grid noxtics ytics back ls 101
set colorsequence classic
a = "#EE4B2B"; b = "#0000FF"; c = "#ff0000"; d = "#ffbbaa"; e = "#bbaacc"; f = "#abcabc"
set key left
set style data histograms
set style histogram rowstacked
set style fill pattern 1 border -1
set yrange [:]
set border 3 back ls 100
set key top center horizontal font ",30" outside
set lmargin 13.75
set rmargin 9.3
set bmargin 9.5
set offset -1.4,-0.4,0,0
set output "traffic.eps"
#plot "load_new.dat" using 2:xtic(1) ti col fc rgb e, "" u 3 ti col fc rgb d,
plot 'traffic.dat' using 2:xtic(1) lc rgb a t "D-mod-k", '' using 3 lc rgb b t "SDN Routing"
