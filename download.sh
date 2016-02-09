#!/usr/bin/env bash
echo -n "Fetching names..."
HTML=""
for i in {1..10}; do
  HTML="$HTML $(curl --silent http://uifaces.com/faces/authorized/$i)"
  echo -n "."
done
echo

URLS=$(echo $HTML \
  | grep -o -E "https://s3.amazonaws.com/uifaces/faces/[^\"]+")

mkdir -p images

for url in $URLS; do
  output=$(echo "$url" | awk '{ split($1,array,"/"); print array[7] ".jpg" }')
  curl --silent "$url" > "images/$output" &
done

echo "Downloading images..."
wait
echo "Done"
