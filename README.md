
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Estimating cycling potential to rail stations

<!-- badges: start -->

[![.github/workflows/render-rmarkdown.yaml](https://github.com/npct/rail/actions/workflows/render-rmarkdown.yaml/badge.svg)](https://github.com/npct/rail/actions/workflows/render-rmarkdown.yaml)
<!-- badges: end -->

The goal of this repo is to explore methods for calculating cycling
potential to public transport nodes, rail stations in the first
instance.

# OD data

The input data consists of origin-destination pairs. These can be
obtained from a range of sources. We will use open OD data from the 2011
UK Census to demonstrate the methods. A random sample of OD pairs from
the national dataset is shown below.

| geo_code1 | geo_code2 | all | from_home | light_rail | train | bus | taxi | motorbike | car_driver | car_passenger | bicycle | foot | other | geo_name1                   | geo_name2      | la_1                    | la_2       |
|:----------|:----------|----:|----------:|-----------:|------:|----:|-----:|----------:|-----------:|--------------:|--------:|-----:|------:|:----------------------------|:---------------|:------------------------|:-----------|
| E02000420 | E02000257 |   1 |         0 |          0 |     0 |   1 |    0 |         0 |          0 |             0 |       0 |    0 |     0 | Haringey 024                | Ealing 020     | Haringey                | Ealing     |
| E02002738 | E02005503 |   1 |         0 |          0 |     0 |   0 |    0 |         0 |          1 |             0 |       0 |    0 |     0 | North East Lincolnshire 013 | Breckland 001  | North East Lincolnshire | Breckland  |
| E02001854 | E02001890 |  21 |         0 |          0 |     2 |   6 |    0 |         0 |         13 |             0 |       0 |    0 |     0 | Birmingham 028              | Birmingham 064 | Birmingham              | Birmingham |

The case study region of West Yorkshire is used to subset the dataset of
2402201 OD pairs. OD pairs converted to desire lines with more than 10
people by any mode (black) and by rail (red) are shown below.

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

# Rail station data

![](README_files/figure-gfm/railsample-1.png)<!-- -->

# Transit routing

# Discussion
