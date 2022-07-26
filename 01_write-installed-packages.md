01_write-installed-packages.R
================
caseyross
2022-07-26

``` r
#an insightful comment
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
    ## ✔ tibble  3.1.7     ✔ dplyr   1.0.9
    ## ✔ tidyr   1.2.0     ✔ stringr 1.4.0
    ## ✔ readr   2.1.2     ✔ forcats 0.5.1
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
ipt <-  installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)

write_csv(x = ipt, "installed-packages.csv")


ipt
```

    ## # A tibble: 271 × 5
    ##    Package     LibPath                                     Version Prior…¹ Built
    ##    <chr>       <chr>                                       <chr>   <chr>   <chr>
    ##  1 anytime     /Users/caseyross/Library/R/arm64/4.2/libra… 0.3.9   <NA>    4.2.0
    ##  2 BH          /Users/caseyross/Library/R/arm64/4.2/libra… 1.78.0… <NA>    4.2.0
    ##  3 bitops      /Users/caseyross/Library/R/arm64/4.2/libra… 1.0-7   <NA>    4.2.0
    ##  4 brew        /Users/caseyross/Library/R/arm64/4.2/libra… 1.0-7   <NA>    4.2.0
    ##  5 brio        /Users/caseyross/Library/R/arm64/4.2/libra… 1.1.3   <NA>    4.2.0
    ##  6 checkmate   /Users/caseyross/Library/R/arm64/4.2/libra… 2.1.0   <NA>    4.2.0
    ##  7 commonmark  /Users/caseyross/Library/R/arm64/4.2/libra… 1.8.0   <NA>    4.2.0
    ##  8 conflicted  /Users/caseyross/Library/R/arm64/4.2/libra… 1.1.0   <NA>    4.2.0
    ##  9 credentials /Users/caseyross/Library/R/arm64/4.2/libra… 1.3.2   <NA>    4.2.0
    ## 10 crosstalk   /Users/caseyross/Library/R/arm64/4.2/libra… 1.2.0   <NA>    4.2.0
    ## # … with 261 more rows, and abbreviated variable name ¹​Priority
    ## # ℹ Use `print(n = ...)` to see more rows
