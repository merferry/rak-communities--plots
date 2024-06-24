set term pdf
set terminal pdf size 8.0in,2.5in
set output 'louvainrak-runtime.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Runtime (s)}'
set logscale y
set grid y


## Draw plot
plot "louvainrak-compare.csv" \
     using ($2/1000):xtic(1) title 'GVE-Louvain' with histogram fill pattern 3 ls 4, \
  '' using ($4/1000):xtic(1) title 'GVE-LPA'     with histogram fill pattern 3 ls 8, \
  '' using ($0-2.5/20):($2/1000):(sprintf("%.2f", $2/1000)) with labels textcolor rgb 'black' rotate by 90 offset character 0,-1.1 title '', \
  '' using ($0+2.5/20):($4/1000):(sprintf("%.2f", $4/1000)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.1 title ''





## Columns in CSV file.
# 01. graph
# 02. louvain-t
# 03. louvain-m
# 04. rak-t
# 05. rak-m
