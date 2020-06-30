#' Page Layout Function
#'
#' This function loads the page layout
#' @param ... include the components of the UI that you want within the main page.
#' @keywords style
#' @export
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::gov_layout(
#'       shinyGovukFrontend::panel_output(
#'         inputId = "panel1",
#'         main_text = "Application Complete",
#'         sub_text = "Thank you for submitting your application.  Your reference is xvsiq")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'   server <- function(input, output, session) {}
#'   shinyApp(ui = ui, server = server)
#' }

gov_layout <- function(...){
  govLayout <- tags$main(id = "main-content", class="govuk-main-wrapper", role="main", ...
  )
  attachDependency(govLayout)
}
