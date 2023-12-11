set term pdf
set terminal pdf size 10in,2.5in
set output 'rak-modularity.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel '{/:Bold Modularity}'
set ytics 0.1
set grid y


## Draw plot
plot "rak-compare.csv" \
     using 8:xtic(1) title 'FLPA'           with histogram fill pattern 3, \
  '' using 6:xtic(1) title 'igraph LPA'     with histogram fill pattern 3, \
  '' using 2:xtic(1) title 'NetworKit LPA'  with histogram fill pattern 3, \
  '' using 5:xtic(1) title 'GVE-LPA'        with histogram fill pattern 3 ls 8, \
  '' using ($0-5.0/20):($8):(sprintf("%.3f", $8)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.1 title '', \
  '' using ($0-1.5/20):($6):(sprintf("%.3f", $6)) with labels rotate by 90 offset character 0,-1.1 title '', \
  '' using ($0+1.5/20):($2):(sprintf("%.3f", $2)) with labels rotate by 90 offset character 0,-1.1 title '', \
  '' using ($0+5.0/20):($5):(sprintf("%.3f", $5)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.1 title ''
  # '' using 2 title '' ls 1 lw 3 with linespoints axes x1y2, \
  # '' using 4 title '' ls 2 lw 3 with linespoints axes x1y2, \
  # '' using 6 title '' ls 3 lw 3 with linespoints axes x1y2, \
  # '' using 9 title '' ls 4 lw 3 lc 0 with linespoints axes x1y2




## Columns in CSV file.
# 1. graph
# 2. networkit-m
# 3. networkit-t
# 4. sahu-t
# 5. sahu-m
# 6. lpa-m
# 7. lpa-t
# 8. flpa-m
# 9. flpa-t
