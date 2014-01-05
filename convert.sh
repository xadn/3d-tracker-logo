#!/usr/bin/env bash

# brew install autotrace pstoedit

# autotrace logo_main_bw.ppm --filter-iterations=1 --centerline --output-format=pdf > logo.pdf

# INPUT=logo_main_bw.ppm
# OUTPUT=logo.dxf

# INPUT=1bit_logo.ppm
# OUTPUT=logo.dxf

# rm -f logo.dxf logo.eps logo.pdf $OUTPUT

# autotrace $INPUT --filter-iterations=1 --output-format=pdf > logo.pdf
# autotrace $INPUT --filter-iterations=1 --output-format=eps > logo.eps

# pstoedit -dt -f dxf:-polyaslines logo.eps $OUTPUT

pstoedit -dt -f dxf:-polyaslines logo_main_2x.eps logo.dxf
