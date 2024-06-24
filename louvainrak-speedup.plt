set term pdf
set terminal pdf size 8.0in,2.5in
set output 'louvainrak-speedup.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Speedup}'
set yrange [0:]
set grid y


## Draw plot
plot "louvainrak-compare.csv" \
     using ($2/$4):xtic(1) title 'GVE-Louvain' with histogram fill pattern 3 ls 4, \
  '' using ($0):($2/$4):(sprintf("%.1f", $2/$4)) with labels textcolor rgb 'black' rotate by 90 offset character 0,-1 title ''
  # '' using ($5/$3) title '' ls 2 lw 3 with linespoints axes x1y2




## Columns in CSV file.
# 01. graph
# 02. louvain-t
# 03. louvain-m
# 04. rak-t
# 05. rak-m
