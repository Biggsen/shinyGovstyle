#' Font Function
#'
#' This function adds rge nta fonts to the app. See https://design-system.service.gov.uk/styles/typography/ for when they are allowed.
#' @keywords font
#' @export
#' @examples
#' if (interactive()) {
#'
#'   ui <- fluidPage(
#'     font(),
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png")
#'   )
#'
#'   server <- function(input, output, session) {}
#'
#'   shinyApp(ui = ui, server = server)
#' }

font <- function(){
  version <- as.character(packageVersion("shinyGovukFrontend")[[1]])

  htmltools::htmlDependency(
    name = "font", version = version,
    src = c(href="shinyGovukFrontend/css"),
    stylesheet = "font.css"
  )
}
