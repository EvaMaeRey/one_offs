ggplot(data = mtcars) +
  aes(x = factor(cyl)) +
  aes(fill = factor(vs)) + #ROTATE
  aes(fill = fct_rev(factor(vs))) + #ROTATE
  geom_bar(position = position_dodge(preserve = "single"))
