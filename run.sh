#!/bin/zsh

function go {
  DIR=$1
   
  echo ""
  echo "=========================================="
  echo "Preparing $DIR..."
  echo "=========================================="

  cd $DIR
  
  yarn 

  cd ..
}


while IFS='' read -r name || [ -n "${name}" ]; do
    go $name
done < list.txt