set term postscript eps color solid
set output '1.eps'
set title "Heat Map generated from a file containing Z values only"    
unset key
set tic scale 0
set border linewidth 2
set palette rgbformula -7,2,-3
unset cbtics
unset colorbox
unset xtics
set x2tics ("A" 0, "B" 1, "C" 2, "D" 3, "E" 4)
set ytics ("N0" 0, "N1" 1, "N2" 2, "N3" 3, "N4" 4)
set style line 102 lc rgb'#101010' lt 0 lw 4
set grid front ls 102
set datafile separator ","
plot 'test.dat' matrix with image, "" matrix using 1:2:(sprintf('%.2f', $3)) with labels font ',12' offset 0,1.2
set datafile separator
