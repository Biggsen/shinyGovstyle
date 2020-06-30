#' Details Function
#'
#' This function create a detail component that you can click for further details.
#' @param inputId The input slot that will be used to access the value.
#' @param label Main label text
#' @param help_text Additional help information in the component.
#' @keywords text area
#' @export
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::gov_layout(size = "two-thirds",
#'       shinyGovukFrontend::details(
#'         inputId = "help_div",
#'         label = "Help with form",
#'         help_text = "To complete the form you need to fill it in...")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'   server <- function(input, output, session) {}
#'   shinyApp(ui = ui, server = server)
#' }

details <-function(inputId, label, help_text){
  govDetails <- tags$details(class = "govuk-details", id = inputId,
    tags$summary(class = "govuk-details__summary",
      tags$span(class = "govuk-details__summary-text", HTML(label))
    ),
    tags$div(class = "govuk-details__text", help_text)
  )
  attachDependency(govDetails)
}
