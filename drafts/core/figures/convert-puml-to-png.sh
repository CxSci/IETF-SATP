#!/bin/bash
# requires sudo apt-get install plantuml or brew install plantuml
set -ex
for file in *.puml
do
  # get the base name of the file (no extension)
  base=$(basename "$file" .puml)
  
  # convert to .png and ascii art using PlantUML
  plantuml "${base}.puml"
  # tutxt or utxt are unicode; txt ascii
  plantuml -txt "${base}.puml"
  plantuml -tutxt "${base}.puml"
  # escape special chars
  #sed -i.bak -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' -e 's/<color:red>//g' -e 's/<warning>//g' "${base}.utxt"

  # Print the success message
  echo "Converted ${base}.puml to ${base}.png"
done
