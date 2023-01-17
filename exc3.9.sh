#!/bin/bash

echo "Enter value of N"
read N

space=$((2*N-1))
star=0

for (( j=1; j<=2*N-1; j++ )); do
  if (( j<=N )); then
    space=$((space-2))
    star=$((star+1))
  else
    space=$((space+2))
    star=$((star-1))
  fi
  for (( m=1; m<=star; m++ )); do
    echo -n "*"
  done
  for (( n=1; n<=space; n++ )); do
    echo -n " "
  done
  for (( p=1; p<=star; p++ )); do
    if (( p!=N )); then
      echo -n "*"
    fi
  done
  echo
done
