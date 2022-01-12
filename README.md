# archive-college-covid-19-dashboards

Quick and dirty system to capture at least basic screen shots of various 
COVID-19 snapshots over time to archive changes, especially those
the Internet Archive can't capture (like many of the Tableau-generated
info embedded in pages).

List is at available at 
https://docs.google.com/spreadsheets/d/1dKzHIY2FOvCSLxlCE06ALo-ThZasBGY9QqCp8WsxPQE/edit#gid=538900877

Project is led by Melody Joy Kramer [@mkramer](https://twitter.com/mkramer).

## Current known issues
* Some dynamic graphs are not reliably captured. May need to delay capture for longer to allow backend to generate graph?
* Some pages are blank. This may also require a further delay?
* Some pages have content wider than our current width of 1440px

## Tech & future improvements
Uses https://github.com/sindresorhus/capture-website-cli to capture visual pages. 
These are currently inaccessible to screen readers. Ideas to capture remote,
dynamic pages as static HTML (beyond what the Internet Archive does) or even
as accessible PDFs (OCR has not proven very effective in quick tests) would 
be appreciated.
