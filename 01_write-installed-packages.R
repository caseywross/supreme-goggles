library(tidyverse)


ipt <-  installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)

write_csv(x = ipt, "installed-packages.csv")


ipt
