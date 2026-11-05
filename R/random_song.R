#' selecte a Random Song
#'
#' @param artist A band/artist to select a song from
#' @param data The dataset to use; defaults to billboard::wiki_hot_100s
#'
#' @return A random song gets printed to the console
#' @export
#'
#' @examples random_song()
#' @examples random_song("Maroon 5")
#' @examples random_song(artist = "The Beatles")
#' @examples random_song(artist = "Rihanna")

random_song <- function(artist ="Rihanna", data = billboard::wiki_hot_100s) {
  data <- data[data$artist == artist,]
  song <- base::sample(data$title,1)
  cat(paste0("Random song by", artist, ":", song))
}
