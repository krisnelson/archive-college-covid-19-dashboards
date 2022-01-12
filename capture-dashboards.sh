#!/bin/sh

wget --output-document=covid-19-dashboards.csv 'https://docs.google.com/spreadsheets/d/1dKzHIY2FOvCSLxlCE06ALo-ThZasBGY9QqCp8WsxPQE/export?format=csv&gid=538900877'
tail -n +2 covid-19-dashboards.csv | cut -d ',' -f2 > covid-19-dashboards-urls.txt

filename='covid-19-dashboards-urls.txt'

while read url; do
  echo "$url"
  capture-website "$url" --full-page --width 1440 --scale-factor 1 \
    --output "./captures/$(echo "$url" \
    | sed -e 's/[^A-Za-z0-9._-]/-/g').jpeg" \
    --overwrite --type jpeg --delay 1 --timeout=600

done < "$filename"
