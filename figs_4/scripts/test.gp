set term postscript eps enhanced color 24
set term post "LMRomanDemi10-Regular" 14
set title noenhanced
#set logscale y
set ylabel "Number of links" offset 1.2,2 font ",14"
set xlabel "Link Loads" offset 1.2,0 font ",14"
set style line 100 lt 1 lc rgb "#606060"
set style line 101 lt 0 lc rgb "#606060"
set xtics rotate by -45 left
set xtics nomirror
set ytics nomirror
set grid noxtics ytics back ls 101
set colorsequence classic
a = "#99c143"; b = "#5671d5"; c = "#ff0000"; d = "#ffbbaa"; e = "#bbaacc"; f = "#abcabc"
set key left
set style data histograms
set style histogram rowstacked
set style fill pattern 1 border -1
set yrange [:]
set border 3 back ls 100
set key top center horizontal font ",14" outside
set lmargin 7.3
set rmargin 9.3
set bmargin 9.5
set offset -0.6,-0.4,0,0
set output "Load.eps"
#plot "load_new.dat" using 2:xtic(1) ti col fc rgb e, "" u 3 ti col fc rgb d,
plot 'Load_new.dat' using 2:xtic(1) t "DMODk", '' using 3 t "Load-balanced scheduling"
