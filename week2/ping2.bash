#!/bin/bash

output_file="sweep2.txt"
> "$output_file"
fping -g 10.0.5.2 10.0.5.50 -a > "$output_file"
echo "Sweep results saved in $output_file"
cat "$output_file"
