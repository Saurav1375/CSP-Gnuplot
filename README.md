# Sales Data Visualization

This project visualizes sales data for various products using GNUplot and shell scripts. The data is provided in `company_sales_data.csv`, and we generate multiple plots to analyze product sales trends over time.

## Prerequisites

- **GNUplot**: Make sure GNUplot is installed to generate the plots.
  - On Ubuntu:
    ```bash
    sudo apt install gnuplot
    ```
  - On Windows, use **WSL** or **Git Bash** to run shell scripts and GNUplot commands.
- **Shell (Bash)**: You need a Bash-compatible shell to execute the scripts.

## Data Format

The CSV file (`company_sales_data.csv`) contains monthly sales data for various products with columns:
- `month_number`, `facecream`, `facewash`, `toothpaste`, `bathingsoap`, `shampoo`, `moisturizer`, `total_units`, `total_profit`

## Visualizations

Each task generates a different plot based on the sales data.

### 1. Plot Total Profit Over Months

Generates a line plot showing total profit for each month.

**Script**: `plot_1.p`

**Run**:
```bash
gnuplot plot_a.p
```


### 2. Plot Monthly Sales for Each Product

Creates a line plot for each product, showing monthly sales with lines and points.

**Script**: `plot_b.p`

**Run**:
```bash
gnuplot plot_b.p
```

### 3. Plot Facecream Sales with a Histogram

Generates a red histogram to show monthly sales for Facecream.

**Script**: `plot_c.p`

**Run**:
```bash
gnuplot plot_c.p
```
### 4. Plot Monthly Sales for the Top-Selling Product

Generates a red histogram to show monthly sales for Facecream.

**Script**: `plot_d.sh`

**Run**:
```bash
./plot_d.sh
```


### 5. Show Yearly Total Sales for Each Product (Pie Chart)

Displays total yearly sales for each product in a pie chart.

**Script**: `plot_e.p`

**Run**:
```bash
gnuplot plot_e.sh
```


### 6. Monthly Sales Stacked Plot for All Products

Creates a stacked plot showing monthly sales for all products with a cumulative view.

**Script**: `plot_f.p`

**Run**:
```bash
gnuplot plot_f.p
```

### 7. Compare Shampoo and Moisturizer Sales (Histogram)

Plots a histogram comparing monthly sales for Shampoo and Moisturizer.

**Script**: `plot_g.p`

**Run**:
```bash
gnuplot plot_g.p
```

### 8. Plot Top 3 Products with the Highest Sales

Identifies the top 3 products by yearly sales and generates a line plot for each product over months.

**Script**: `plot_h.sh`

**Run**:
```bash
./plot_h.sh
```

### 9. Show June Sales for Each Product (Pie Chart)

Creates a pie chart showing sales for each product in June.

**Script**: `plot_i.sh`

**Run**:
```bash
./plot_i.sh
```



