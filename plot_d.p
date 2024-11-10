set datafile separator ","
set title "Top Product Sales Over Months (BathingSoap)"
set xlabel "Month"
set ylabel "Units Sold"
set term png
set output "plot-d.png"
plot "company_sales_data.csv" using 1:5 with linespoints title "BathingSoap"
