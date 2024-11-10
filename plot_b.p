set datafile separator ","
set title "Sales of Each Product Over Months"
set xlabel "Month"
set ylabel "Units Sold"
set key out box
set term png
set output "plot-b.png"
plot "company_sales_data.csv" using 1:2 with linespoints title "Facecream", \
     "company_sales_data.csv" using 1:3 with linespoints title "Facewash", \
     "company_sales_data.csv" using 1:4 with linespoints title "Toothpaste", \
     "company_sales_data.csv" using 1:5 with linespoints title "Bathing Soap", \
     "company_sales_data.csv" using 1:6 with linespoints title "Shampoo", \
     "company_sales_data.csv" using 1:7 with linespoints title "Moisturizer"
