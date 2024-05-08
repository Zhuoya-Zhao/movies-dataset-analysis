clean_movies = function(movies_file) {
  movies = read_xlsx(path = "raw-data/movies.xlsx", na ="")

  movies = movies |>
    select(genres, average_rating, christmas)

  movies = na.omit(movies)

  movies_clean =
    movies |>
    filter(
      christmas == TRUE
    )

  return(movies_clean)
}
