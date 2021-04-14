#!/bin/bash
echo "Random 2 : This script will  write 1-10 in random order."
awk -v min=1 -v max=10 'BEGIN{
  for (i = min; i <= max; i++) a[i] = i
  srand()
  for (i = min; i <= max; i++) {
    j = int(rand() * (max - min + 1)) + min
    tmp = a[i]; a[i] = a[j]; a[j] = tmp
  }
  for (i = min; i <= max; i++) print a[i]
}'