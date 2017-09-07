library(graphics)
library("TDA")

X <- circleUnif(400)
Xlim <- c(-1.6, 1.6); Ylim <- c(-1.7, 1.7); by <- 0.065
Xseq <- seq(Xlim[1], Xlim[2], by = by)
Yseq <- seq(Ylim[1], Ylim[2], by = by)
Grid <- expand.grid(Xseq, Yseq)

distance <- distFct(X, Grid)

h <- 0.3
KDE <- kde(X = X, Grid = Grid, h = h)

persp(Xseq, Yseq,matrix(distance, ncol = length(Yseq), nrow = length(Xseq)), 
      xlab = "",ylab = "", zlab = "", theta = -20, phi = 35, ltheta = 50,col = 2, border = NA, main = "distance", d = 0.5, scale = FALSE,
      expand = 3, shade = 0.9)
