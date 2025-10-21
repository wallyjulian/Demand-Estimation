# created August 12, 2024

# see: https://towardsdatascience.com/using-double-machine-learning-and-linear-programming-to-optimise-treatment-strategies-920c20a29553
# and: https://github.com/raz1470/causal_ai/blob/main/notebooks/estimating%20average%20treatment%20effects%20with%20double%20machine%20learning.ipynb?source=post_page-----920c20a29553--------------------------------

# https://medium.com/save-the-data/how-to-use-python-in-r-with-reticulate-and-conda-36685534f06a
# start with conda create --prefix ./envs python=3.11.8 numpy seaborn pandas
# and conda activate /Users/louisodette/Documents/R_projects/cunningham/envs

system( "conda init zsh" )
system( "conda activate /Users/louisodette/Documents/R_projects/Demand-Estimation/envs" )

require(ggplot2, quietly = TRUE)
require(reticulate, quietly = TRUE)
require(patchwork, quietly = TRUE)

use_python('../envs/bin/', required = NULL)
use_condaenv('../envs/', required = NULL)
Sys.setenv(RETICULATE_PYTHON="../envs/bin/python")
data_dir <- here::here("dat/")