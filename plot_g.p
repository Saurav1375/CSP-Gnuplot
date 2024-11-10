# shampoo_moisturizer_histogram.gp
set datafile separator ","
set style data histograms
set style fill solid 0.5
set title "Shampoo vs Moisturizer Sales Over Months"
set xlabel "Month"
set ylabel "Units Sold"
set key box
set term png
set output "plot-g.png"
plot "company_sales_data.csv" using 6:xtic(1) title "Shampoo", \
     '' using 7 title "Moisturizer"
