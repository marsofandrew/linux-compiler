# /bin/sh
if [ $# -lt 1 ]; then
  echo 'Usage: ./run.sh [clean] [make] [run] [all]'
  exit 0
fi
if [ "$1" = "clean" -o "$1" = "all" ]; then
  echo 'Removing old files...'
  rm *.exe
  rm *.ass
  rm *.tex
fi
if [ "$1" = "make" -o "$1" = "all" ]; then
  echo 'Running make'
  make
fi
if [ "$1" = "run" -o "$1" = "all" ]; then
  echo 'Compiling .pli file'
  ./komppl.exe  task2.pli
  echo 'Building object file'
  ./kompassr.exe task2.ass
  cp task2.tex examppl.tex
  echo 'Running debugger'
  ./absloadm.exe spis.mod
fi
