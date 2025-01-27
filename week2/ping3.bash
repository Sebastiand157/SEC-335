#!/bin/bash

output_file="sweep3.txt"
> "$output_file"
nmap -sn 10.0.5.2-50 -oG - | awk '/Up$/{print $2}' > "$output_file"
echo "Sweep results saved in $output_file:"
cat "$output_file"
