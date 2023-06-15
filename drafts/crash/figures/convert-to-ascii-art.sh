#!/bin/bash
mkdir -p out
for file in *.puml
do
    plantuml -tutxt "$file" > "./out/${file%.puml}.txt"
done
