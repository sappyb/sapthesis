set term postscript eps enhanced color 24
set term post "LMRomanDemi10-Regular" 14
set title noenhanced
set ylabel "Speedup in Runtime w.r.t. DMODk" offset 1.2,2 font ",14"
set style line 100 lt 1 lc rgb "#606060"
set style line 101 lt 0 lc rgb "#606060"
set xtics rotate by -45 left
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
a = "#99c143"; b = "#5671d5"; c = "#ff0000"; d = "#ffbbaa"; e = "#bbaacc"; f = "#abcabc"
set yrange [0:2.5]
set border 3 back ls 100
set key top center horizontal font ",14" outside
set lmargin 7.3
set rmargin 9.3
set bmargin 9.5
set offset -0.6,-0.4,0,0
set output "512.eps"
plot "512-single.dat" using 2:xtic(1) ti col fc rgb e, "" u 3 ti col fc rgb d,"" u 4 ti col fc rgb d, "" u 5 ti col fc rgb d
