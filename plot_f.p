set datafile separator ","
set term png
set output 'plot-f.png'
set title 'Monthly Sales Stacked by Product'
set style data histograms
set style histogram columnstacked
set style fill solid 1.0 border -1
set boxwidth 0.9
set key out box
set xtics rotate by -45

set title "Monthly Product Sales"
set xlabel "Products"
set ylabel "Sales (Units)"

plot 'company_sales_data.csv' using 2:key(1) title columnhead, '' u 3 title columnhead, '' u 4 title columnhead ,\
'' u 5 title columnhead, '' u 6 title columnhead, '' u 7 title columnhead
     