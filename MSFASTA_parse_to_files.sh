#!/bin/bash
echo Enter MS FASTA file to convert
read filename
while read line
do
    if [[ ${line:0:1} == '>' ]]
    then
        outfile=${line#>}.fa
        echo $line >> "$outfile"
    else
        echo $line >> "$outfile"
    fi
done < $filename
