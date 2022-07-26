library(tidyverse)

apt_freqtable <- read_csv(here::here("installed-packages.csv"))

p <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

ggsave(here::here("figs/built-barchart.png"), p, height = 3)



