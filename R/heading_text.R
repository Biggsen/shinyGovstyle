#' Heading Text Function
#'
#' This function create a heading text
#' @param text_input Text to display
#' @param size Text size using xl, l, m, s.  Defaults to xl.
#' @keywords heading
#' @export
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::gov_layout(size = "two-thirds",
#'       shinyGovukFrontend::heading_text("This is great text", "m")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'   server <- function(input, output, session) {}
#'   shinyApp(ui = ui, server = server)
#' }

heading_text <- function(text_input, size = "xl"){
  govHeading <- tags$h1(HTML(text_input), class=paste0("govuk-heading-", size))
  attachDependency(govHeading)
}
