## Install if needed
# install.packages(c('rmarkdown', 'knitcitations', 'devtools'))

## For the cool knitrBootstrap version use:
# devtools::install_github('jimhester/knitrBootstrap')

## Render all the files in this repo:
library('rmarkdown')

## The following code assumes that your current working directory is where
## the file "render.R" is located at. If you need to change your working
## directory use the functions getwd() and setwd().

## This code renders the index.Rmd files for all protocols, which you might
## not want to do.
files <- dir(pattern = 'index.Rmd', full.names = TRUE, include.dirs = TRUE, recursive = TRUE)
sapply(files, render)

## Instead, use code like this to render a specific file
render("./protocol_template/index.Rmd")
