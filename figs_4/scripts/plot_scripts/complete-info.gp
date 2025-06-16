set term postscript eps enhanced color 24
set term post "LMRomanDemi10-Regular" 14
set title noenhanced
set ylabel "Speedup" offset -2,0 font ",30"
set style line 100 lt 1 lc rgb "#606060"
set style line 101 lt 0 lc rgb "#606060"
set xtics nomirror
set ytics nomirror
set grid noxtics ytics back ls 101
set colorsequence classic
set style data histogram
set xrange [-1.2:]
set style fill pattern 1 border -1
set style histogram cluster gap 2
unset logscale y
unset logscale y2
a = "#A569BD"; b = "#D4EFDF"; c = "#AED6F1"; d = "#ffbbaa"; e = "#bbaacc"; f = "#abcabc"
set yrange [0:2.2]
set border 3 back ls 100
set key top center horizontal font ",30" outside
set lmargin 10.3
set rmargin 9.3
set bmargin 9.5
set tics font ", 30"
set offset -0.6,-0.4,0,0
set output "complete-info.eps"
plot "complete-info.dat" using 2:xtic(1) ti col lc rgb a, "" u 3 ti col lc rgb b,"" u 4 ti col lc rgb c
