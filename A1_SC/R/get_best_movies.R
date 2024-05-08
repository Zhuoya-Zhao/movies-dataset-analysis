get_best_movies <- function(movies_analyse) {
  df2 <-
    movies_analyse |>
    group_by(genres) |>
    summarise(
      revised_rating = mean(rating)
    ) |>
    tibble() |> # create table
    arrange(desc(revised_rating)) # descending order of rating

  return(df2)
}
