library(jpeg)

image <- readJPEG("images/images.jpg")
red <- image[,,1]
green <- image[,,2]
blue <- image[,,3]

# writeJPEG(red, target = "img1.jpg")
# writeJPEG(green, target = "img2.jpg")
# writeJPEG(blue, target = "img3.jpg")