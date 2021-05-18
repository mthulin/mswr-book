#* Plot some random numbers
#* param n The number of points to plot
#* @serializer png
#* @get /plot
function(n = 15) {
  x <- rnorm(n)
  y <- rnorm(n)
  plot(x, y, col = 2)
}

#* Print a message
#* @param name Your name
#* @get /message
function(name = "") {
  list(message = paste("Hello", name, "- I'm happy to see you!"))
}

#* Download the mtcars data as a csv file
#* @serializer csv
#* @get /download
function() {
  mtcars
}
