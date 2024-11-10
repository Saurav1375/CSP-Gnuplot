set datafile separator ","
set title "Total Profit Over Months"
set xlabel "Month"
set ylabel "Total Profit"
set term png
set output "plot(a).png"
plot "company_sales_data.csv" using 1:9 with lines title "Total Profit" lw 3
