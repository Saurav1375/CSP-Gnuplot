set terminal png
set output 'plot-i.png'
set title 'Product Sales in June'
set key out top box
set size square
set xrange [-1:1]
set yrange [-1:1]
set style fill solid 1.0 border -1
reg1=0.1370598979*360
reg2=reg1+0.0771377587*360
reg3=reg2+0.2424812030*360
reg4=reg3+0.3717755094*360
reg5=reg4+0.0938628152*360
reg6=reg5+0.0771377587*360
set angles degree
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
