library(targets)
library(tarchetypes)

tar_option_set(
  packages = c("tidyverse","readxl"),
  format = "rds"
)

tar_source()

list(
  tar_file(movies_file, "raw-data/movies.xlsx"),
  tar_target(movies_clean,clean_movies(movies_file)),
  tar_target(movies_analyse, analyse_movies(movies_clean)),
  tar_target(movies_best_rating, get_best_movies(movies_analyse)),
  tar_quarto(readme, "readme.qmd")
)
