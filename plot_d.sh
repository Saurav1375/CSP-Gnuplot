#!/bin/bash
# top_product.sh

top_product=$(awk -F',' 'NR>1 {
    facecream+=$2; facewash+=$3; toothpaste+=$4; soap+=$5; shampoo+=$6; moisturizer+=$7
} END {
    print "Facecream", facecream; print "Facewash", facewash;
    print "Toothpaste", toothpaste; print "BathingSoap", soap;
    print "Shampoo", shampoo; print "Moisturizer", moisturizer
}' company_sales_data.csv | sort -k2 -nr | head -n1 | awk '{print $1}')

echo "The top product for the year is: $top_product"

case "$top_product" in
    Facecream) top_product_col=2 ;;
    Facewash) top_product_col=3 ;;
    Toothpaste) top_product_col=4 ;;
    BathingSoap) top_product_col=5 ;;
    Shampoo) top_product_col=6 ;;
    Moisturizer) top_product_col=7 ;;
    *) echo "Error: Unknown product"; exit 1 ;;
esac

cat << EOF > plot_d.p
set datafile separator ","
set title "Top Product Sales Over Months ($top_product)"
set xlabel "Month"
set ylabel "Units Sold"
set term png
set output "plot-d.png"
plot "company_sales_data.csv" using 1:$top_product_col with linespoints title "$top_product"
EOF

gnuplot plot_d.p

