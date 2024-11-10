set datafile separator ","
set terminal png
set output 'plot-h.png'
set title 'Product Sales Graph'
set xlabel 'Months'
set ylabel 'Sales'
set key out top box
set xtics ("Jan" 1,"Feb" 2,"Mar" 3,"Apr" 4,"May" 5,"Jun" 6,"Jul" 7,"Aug" 8,"Sep" 9,"Oct" 10,"Nov" 11,"Dec" 12)
plot 'company_sales_data.csv' using 1:7 w lp title "moisturizer",      'company_sales_data.csv' using 1:6 w lp title "shampoo",      'company_sales_data.csv' using 1:5 w lp title "bathingsoap"
