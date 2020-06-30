#' Back Link Function
#'
#' This function adds a back link to the page
#' @param inputId The input slot that will be used to access the value.
#' @param link Link for when the button is clicked  Defaults to #
#' @keywords backlink
#' @export
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::gov_layout(size = "full",
#'       shinyGovukFrontend::backlink_Input(
#'         inputId = "input1",
#'         link = "url")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'   server <- function(input, output, session) {}
#'   shinyApp(ui = ui, server = server)
#' }

backlink_Input <- function(inputId, link = "#") {
  govBacklink <- tags$a("Back", href=link, class="govuk-back-link")
  attachDependency(govBacklink)
}
