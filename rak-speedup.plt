set term pdf
set terminal pdf size 10in,2.5in
set output 'rak-speedup.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 30 right
set key above font ",12"
set ylabel  '{/:Bold Speedup}'
set logscale y
set grid y


## Draw plot
plot "rak-compare.csv" \
     using ($9/$4):xtic(1) title 'FLPA'           with histogram fill pattern 3, \
  '' using ($7/$4):xtic(1) title 'igraph LPA'     with histogram fill pattern 3, \
  '' using ($3/$4):xtic(1) title 'NetworKit LPA'  with histogram fill pattern 3, \
  '' using ($0-2./10):($9/$4):(sprintf("%.0f", $9/$4)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.5 title '', \
  '' using ($0-0./10):($7/$4):(sprintf("%.0f", $7/$4)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.5 title '', \
  '' using ($0+2./10):($3/$4):(sprintf("%.0f", $3/$4)) with labels rotate by 90 offset character 0,-0.7 title ''
  # '' using ($2/$9) title '' ls 1 lw 3 with linespoints axes x1y2, \
  # '' using ($4/$9) title '' ls 2 lw 3 with linespoints axes x1y2, \
  # '' using ($6/$9) title '' ls 3 lw 3 with linespoints axes x1y2




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
