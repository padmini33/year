if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -w "2020" .hidden.txt | wc -l) -eq 1 ]&&[ $(grep -w "[1]" .hidden.txt | wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






