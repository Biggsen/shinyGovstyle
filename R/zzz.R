#' Adds the content of www to shinyGovukFrontend/
#'
#' @importFrom shiny addResourcePath
#'
#' @noRd
#'
.onLoad <- function(...) {
  shiny::addResourcePath('shinyGovukFrontend', system.file('www', package = 'shinyGovukFrontend'))
}
