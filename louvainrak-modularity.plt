set term pdf
set terminal pdf size 8.0in,2.5in
set output 'louvainrak-modularity.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Modularity}'
set yrange [0.3:1]
set grid y


## Draw plot
plot "louvainrak-compare.csv" \
     using 3:xtic(1) title 'GVE-Louvain' with histogram fill pattern 3 ls 4, \
  '' using 5:xtic(1) title 'GVE-LPA'     with histogram fill pattern 3 ls 8, \
  '' using ($0-2.5/20):($3):(sprintf("%.3f", $3)) with labels textcolor rgb 'black' rotate by 90 offset character 0,-1.2 title '', \
  '' using ($0+2.5/20):($5):(sprintf("%.3f", $5)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.2 title ''




## Columns in CSV file.
# 01. graph
# 02. louvain-t
# 03. louvain-m
# 04. rak-t
# 05. rak-m
