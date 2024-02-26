set term pdf
set terminal pdf size 10in,2.5in
set output 'rak-runtime.pdf'


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
plot "rak-compare.csv" \
     using ($9/1000):xtic(1) title 'FLPA'           with histogram fill pattern 3, \
  '' using ($7/1000):xtic(1) title 'igraph LPA'     with histogram fill pattern 3, \
  '' using ($3/1000):xtic(1) title 'NetworKit LPA'  with histogram fill pattern 3, \
  '' using ($4/1000):xtic(1) title 'GVE-LPA'        with histogram fill pattern 3 ls 8, \
  '' using ($0-5.0/20):($9/1000):(sprintf("%.0f", $9/1000)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.0 title '', \
  '' using ($0-1.5/20):($7/1000):(sprintf("%.0f", $7/1000)) with labels textcolor rgb 'white' rotate by 90 offset character 0,-1.5 title '', \
  '' using ($0+1.5/20):(2.1*$3/1000):(sprintf("%.0f", $3/1000)) with labels rotate by 90 offset character 0,0 title '', \
  '' using ($0+5.0/20):(3.0*$4/1000):(sprintf("%.1f", $4/1000)) with labels rotate by 90 offset character 0,0 title ''
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
