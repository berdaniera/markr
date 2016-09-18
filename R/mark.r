#' Marking time-series data
#'
#' This function opens up the marking UI.
#' @param data Your input data, should have a first column named 'DateTime' and the remaining columns as data.
#' @export
#' @examples
#' mark(dataframe)

mark <- function(data=NULL) {
  require(shiny)
  require(dplyr)
  require(tidyr)
  require(ggplot2)
  cbPalette = c("#333333", "#E69F00", "#337ab7", "#56B4E9", "#739E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  datain = FALSE
  if(!is.null(data)){ # data exists
    if("DateTime"%in%colnames(data) & ncol(data)>1){ # data are correct
      datain = TRUE
    }
  }
  source('markui.r',local=TRUE)
  source('markserve.r',local=TRUE)
  shinyApp(
    ui = markui,
    server = markserve,
    options=list(shiny.maxRequestSize=30*1024^2)
  )
}
