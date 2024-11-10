set datafile separator ","
set style data histograms
set style fill solid
set title "Facecream Sales Over Months"
set xlabel "Month"
set ylabel "Units Sold"
set boxwidth 0.8
set term png
set output "plot-c.png"
plot "company_sales_data.csv" using 2:xtic(1) linecolor rgb "red" title "Facecream"
