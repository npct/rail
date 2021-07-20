
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 1 Estimating cycling potential to rail stations

<!-- badges: start -->

[![.github/workflows/render-rmarkdown.yaml](https://github.com/npct/rail/actions/workflows/render-rmarkdown.yaml/badge.svg)](https://github.com/npct/rail/actions/workflows/render-rmarkdown.yaml)
<!-- badges: end -->

The goal of this repo is to explore methods for calculating cycling
potential to public transport nodes, rail stations in the first
instance.

# 2 OD data

The input data consists of origin-destination pairs. These can be
obtained from a range of sources. We will use open OD data from the 2011
UK Census to demonstrate the methods. A random sample of OD pairs from
the national dataset is shown below.

| geo\_code1 | geo\_code2 | all | from\_home | light\_rail | train | bus | taxi | motorbike | car\_driver | car\_passenger | bicycle | foot | other | geo\_name1       | geo\_name2         | la\_1        | la\_2          |
|:-----------|:-----------|----:|-----------:|------------:|------:|----:|-----:|----------:|------------:|---------------:|--------:|-----:|------:|:-----------------|:-------------------|:-------------|:---------------|
| E02004474  | E02000916  |   2 |          0 |           0 |     0 |   0 |    0 |         0 |           2 |              0 |       0 |    0 |     0 | Castle Point 002 | Waltham Forest 022 | Castle Point | Waltham Forest |
| E02000512  | E02003707  |   2 |          0 |           0 |     0 |   0 |    0 |         0 |           2 |              0 |       0 |    0 |     0 | Hillingdon 019   | Wycombe 012        | Hillingdon   | Wycombe        |
| E02000371  | E02000735  |   1 |          0 |           0 |     0 |   0 |    0 |         0 |           0 |              0 |       1 |    0 |     0 | Hackney 027      | Newham 022         | Hackney      | Newham         |

The case study region of West Yorkshire is used to subset the dataset of
2402201 OD pairs to records representing trips originating in the region
(95915 rows). In a further subsetting stage only OD pairs with more than
a threshold number of trips were kept to focus the analysis on desire
lines in which large numbers of people travel by train. Setting this
threshold to 10 people by results in 447 rows in the case study region.
These rail trips are illustrated in Figure
<a href="#fig:simpleraildesire">2.1</a> below.

<div class="figure">

<img src="README_files/figure-gfm/simpleraildesire-1.png" alt="Illustration of major commute desire lines originating in West Yorkshire by any mode (black) and by rail (blue)."  />
<p class="caption">
Figure 2.1: Illustration of major commute desire lines originating in
West Yorkshire by any mode (black) and by rail (blue).
</p>

</div>

# 3 Rail station data

Data on rail station locations was obtained from the
[naptan.app.dft.gov.uk](http://naptan.app.dft.gov.uk) website. The
multi-stage trips from home to work via rail stations is shown in Figure
<a href="#fig:railsample">3.1</a> below. This graphic assumes
simplistically that the first stage of rail journeys was to the nearest
station, that the rail journey went to the station closes to their
destination, and that trips involve travelling in a straight line (an
assumption we will remove in the next section).

<div class="figure">

<img src="README_files/figure-gfm/railsample-1.png" alt="Illustration of desire lines with high numbers of rail trips, focussing on a sample of 5, assuming straight line travel (left) and assuming trips travel via the nearest station to the origin and destination (right)." width="49%" /><img src="README_files/figure-gfm/railsample-2.png" alt="Illustration of desire lines with high numbers of rail trips, focussing on a sample of 5, assuming straight line travel (left) and assuming trips travel via the nearest station to the origin and destination (right)." width="49%" />
<p class="caption">
Figure 3.1: Illustration of desire lines with high numbers of rail
trips, focussing on a sample of 5, assuming straight line travel (left)
and assuming trips travel via the nearest station to the origin and
destination (right).
</p>

</div>

# 4 Transit routing

# 5 Discussion
