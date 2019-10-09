library(ggplot2)
library(grid)

p <-  ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

ggsave(file = "/code/Pyout/output.png", plot = p)
