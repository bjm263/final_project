
library(tidyverse)
library(flowerize)

flowers <- read.csv("flowers.csv")

flower_describe(flowers, flowers$nitrogen, flowers$inflorescence)

flower_analyze(flowers$inflorescence, flowers$nitrogen, flowers)

flower_visualize(flowers$inflorescence, flowers$nitrogen, flowers)