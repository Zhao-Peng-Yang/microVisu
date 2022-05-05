#' Visualize the amplicon data
#'
#' @param otuTab otu table of your sample
#' @param metaData design file
#' @param classToPlot which column you want to plot
#' @param topNum  top n taxa to plot
#' @param col colour palette: including all the types of the "display.brewer.all()" in the RColorBrewer package
#' @return
#'
#' @export 
#'
#' @examples otu_table_L2.txt <- system.file("extdata", "otu_table_L2.txt", package = "microVisu")
#' @examples design.txt <- system.file("extdata", "design.txt", package = "microVisu")
#' @examples taxBarPlot(otuTab = otu_table_L2.txt, metaData = design.txt,
#'  classToPlot = "status", topNum = 10, col = "Set3")
taxBarPlot  <- function() {
    # load packages needed
    library("tidyr")
    library("ggplot2")

    x <- c(3.468603914, 4.169942385, 2.49765493, 2.180228383, 0.403290656, 8.681735611, 0.416485878, 0.069568295)
    f <- factor(rep(c("T","C"), each=4))
    data <- data.frame(x, f)
    color <-c(2,3)
    boxplot(x~f,data,width=c(1,2),col=color,border=color,notch=TRUE,cex=0.1)

}
