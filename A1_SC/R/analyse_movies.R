analyse_movies <- function(movies_clean) {
  df = movies_clean |> separate(genres,
                                c('genres1','genres2','genres3','genres4'),
                                sep = ","
  )

  df1 = data.frame(
    genres = c(df$genres1, df$genres2, df$genres3, df$genres4),
    rating = rep(df$average_rating, times=4)
  )

  movies_analyse = na.omit(df1)


  return(movies_analyse)
}
