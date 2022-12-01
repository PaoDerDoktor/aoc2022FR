#!/bin/bash

cd "$(dirname "$0")"

for folder in day*
do
    if [ ! -d "$folder" ]
    then
        continue
    fi

    echo "Compiling $folder"
    cd "$folder"

    pandoc -f markdown-smart -t html-smart -o part1.phtml part1.md
    pandoc -f markdown-smart -t html-smart -o part2.phtml part2.md

    if [ -f "$folder.html" ]
    then
        rm "$folder.html"
    fi

    touch "$folder.html"

    echo "<!DOCTYPE html>" >> "$folder.html"
    echo "<html lang='fr'>" >> "$folder.html"
    echo "<head>" >> "$folder.html"
    echo "<meta charset='UTF-8'>" >> "$folder.html"
    echo "<link href='https://fonts.googleapis.com/css?family=Source+Code+Pro' rel='stylesheet'>" >> "$folder.html"
    echo "<link rel='stylesheet' type='text/css' href='../style/aocLike.css'>" >> "$folder.html"
    echo "<meta name='day' content='$folder'>" >> "$folder.html"
    echo "</head>" >> "$folder.html"
    echo "<body>" >> "$folder.html"
    echo "<section id='translation_part_one'>" >> "$folder.html"
    cat part1.phtml >> "$folder.html"
    echo "</section>" >> "$folder.html"
    echo "<section id='translation_part_two'>" >> "$folder.html"
    cat part2.phtml >> "$folder.html" 
    echo "</section>" >> "$folder.html"
    echo "</body>" >> "$folder.html"
    echo "</html>" >> "$folder.html"

    rm part1.phtml part2.phtml
    cd ..
done
