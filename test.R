library(mvtnorm)
library(dplyr)
library(tibble)
library(purrr)
library(survival)
library(riskRegression)
library(future)
library(furrr)
library(tidyverse)
library(stats)

# Set simulation parameters ----
# Number of simulated datasets
# Note we will want it much higher than this; small now for testing purposes
nsim <- 1000

# List of missing variable patterns
missing_var_list <- list(c('x1'),
                         c('x1'),
                         c('x1'),
                         c('x1','x3','x4'),
                         c('x1','x3','x4'),
                         c('x1','x3','x4'),
                         c('x1','x3','x4','x7','x10','x11'),
                         c('x1','x3','x4','x7','x10','x11'),
                         c('x1','x3','x4','x7','x10','x11'))

# List of missing percentages
missing_pct_list <- list(c(0.05),
                         c(0.15),
                         c(0.6),
                         c(0.05,0.05,0.05),
                         c(0.05,0.15,0.3),
                         c(0.15,0.3,0.6),
                         c(0.05,0.05,0.05,0.05,0.05,0.05),
                         c(0.05,0.05,0.15,0.15,0.3,0.3),
                         c(0.15,0.15,0.3,0.3,0.6,0.6))
