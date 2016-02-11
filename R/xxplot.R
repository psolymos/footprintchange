xxplot <- function(type=c("norm","lognorm"), col=c("black","red")) {
    type <- match.arg(type)
    col <- match.arg(col)
    x <- rnorm(1000)
    if (type == "lognorm")
        x <- exp(x)
    hist(x, col=col)
    invisible()
}
