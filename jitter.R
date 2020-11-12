base %>% 
  group_by(category, year) %>% 
  mutate(pos = as.numeric(name) - 1) %>% 
  mutate(nudge_x = pos %% 3) %>% 
  mutate(nudge_y = pos %/% 3) %>% 
  mutate(num_cat = as.factor(category)) %>% 
  mutate(num_cat = as.numeric(num_cat)) %>% 
  ggplot() +
  aes(x = year, y = category) +
  geom_point(size = 3,
             alpha = .4) +
  aes(color = name) + 
  aes(x = year + nudge_x / 5) +
  aes(y = num_cat - nudge_y / 5) +
  labs(title = "No jittering; overplotting") +
  theme(legend.position = "bottom")
