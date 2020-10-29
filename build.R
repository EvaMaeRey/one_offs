library(tidyverse)
mtcars %>% 
  ggplot() +
  aes(x = "all") +
  geom_bar(position = position_dodge2(preserve = "single")) + 
  stat_count(geom = "text",
             aes(label = ..count..),
             position = 
               position_dodge2(width = 1,
                              preserve = "single")) + #BREAK
  aes(x = factor(vs)) + #BREAK
  aes(fill = factor(gear)) + #BREAK
  facet_grid(factor(cyl)~.) #BREAK
