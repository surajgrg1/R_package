test_that("random_song returns one song by the artist", {
  fake <- data.frame(artist = c("A", "A", "B"),
                     title = c("Song 1", "Song 2", "Song 3"))
  result <- random_song("A", data = fake)
  expect_length(result, 1)
  expect_true(result %in% c("Song 1", "Song 2"))
})

test_that("random_song errors for an unknown artist", {
  fake <- data.frame(artist = "A", title = "Song 1")
  expect_error(random_song("Z", data = fake))
})
