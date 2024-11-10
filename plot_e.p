set terminal png
set output 'plot-e.png'
set title 'Annual sale of products'
set key out top box
set style fill solid 1.0 border -1
set xrange [-1:1]
set yrange [-1:1]

reg1= 0.12277453354223*360
reg2=reg1+0.0659272183449651*360
reg3=reg2+ 0.248931776100271*360
reg4=reg3+ 0.40596068936049*360
reg5=reg4+ 0.0904785643070788*360
reg6=reg5+ 0.0659272183449651*360
set angles degree
set size square

set obj 1 circle arc [0:reg1] fc rgb "red"
set obj 2 circle arc [reg1:reg2] fc rgb "blue"
set obj 3 circle arc [reg2:reg3] fc rgb "cyan"
set obj 4 circle arc [reg3:reg4] fc rgb "green"
set obj 5 circle arc [reg4:reg5] fc rgb "yellow"
set obj 6 circle arc [reg5:reg6] fc rgb "orange"

set obj 1 circle at 0,0 size 1 front 
set obj 2 circle at 0,0 size 1 front
set obj 3 circle at 0,0 size 1 front
set obj 4 circle at 0,0 size 1 front
set obj 5 circle at 0,0 size 1 front
set obj 6 circle at 0,0 size 1 front

plot NaN title "facecream" with lines lc "red", NaN title "facewash" with lines lc "blue",NaN title "toothpaste" with lines lc "cyan",NaN title "bathingsoap" with lines lc "green",NaN title "shampoo" with lines lc "yellow",NaN title "moisturizer" with lines lc "orange"