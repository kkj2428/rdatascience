library(tidyverse)

#######  Graphing Template ########
# ggplot(data = <DATA>) +
# <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
# 
#  replace <> items with dataframe, function or component
###################################



ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

#adding aesthetic
# car type to color legend
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#size of point reveals its class affiliation
# looks weird because size is not mapped to value
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))


# TOP using an alpha aesthetic
# adjusts transparency
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Bottom
# creates two errow - can only handle 6 discrete values, the data has 7
# 62 rows had missing values and it removed them
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# setting your own aesthetics
# all points blue
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


# map a continuous variable
ggplot(data = mpg) +
  geom_point(mapping = aes(x = fl, y = hwy, color = class))


