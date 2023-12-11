set term pdf
set terminal pdf size 10in,2.5in
set output 'louvainrak-modularity.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Runtime (s)}'
set y2label '{/:Bold Modularity}'
set logscale y
unset logscale y2
set y2tics 0.1
set grid y


## Draw plot
plot "louvainrak-sta.csv" \
     using ($2/1000):xtic(1) title 'Our Louvain' with histogram fill pattern 2, \
  '' using ($4/1000):xtic(1) title 'Our LPA'     with histogram fill pattern 2, \
  '' using 3 title '' ls 1 lw 3 with linespoints axes x1y2, \
  '' using 5 title '' ls 2 lw 3 with linespoints axes x1y2




## Columns in CSV file.
# 01. graph
# 02. louvain-t
# 03. louvain-m
# 03. rak-t
# 04. rak-m
