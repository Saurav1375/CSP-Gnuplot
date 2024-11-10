#!/bin/bash
file="company_sales_data.csv"

products=("facecream" "facewash" "toothpaste" "bathingsoap" "shampoo" "moisturizer")
totals=()

# Calculate totals for each product
for i in {1..6}
do
   col=$((i+1))
   total=$(awk -v col=$col '{sum += $col} END {print sum}' "$file")
   totals+=($total)
done

# Find top 3 indices based on the totals
top_products=($(for i in "${!totals[@]}"; do echo "$i ${totals[i]}"; done | sort -k2 -nr | head -3 | awk '{print $1}'))

# Create gnuplot script

cat << EOF > plot_h.p
set datafile separator ","
set terminal png
set output 'plot-h.png'
set title 'Product Sales Graph'
set xlabel 'Months'
set ylabel 'Sales'
set key out top box
set xtics ("Jan" 1,"Feb" 2,"Mar" 3,"Apr" 4,"May" 5,"Jun" 6,"Jul" 7,"Aug" 8,"Sep" 9,"Oct" 10,"Nov" 11,"Dec" 12)
plot '$file' using 1:$((${top_products[0]}+2)) w lp title "${products[${top_products[0]}]}", \
     '$file' using 1:$((${top_products[1]}+2)) w lp title "${products[${top_products[1]}]}", \
     '$file' using 1:$((${top_products[2]}+2)) w lp title "${products[${top_products[2]}]}"
EOF

# Run gnuplot to generate the graph
gnuplot plot_h.p