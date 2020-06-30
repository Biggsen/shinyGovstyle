#' Error on Function
#'
#' This function turns on the the error o the component.  Can be used to validate inputs.
#' @param inputId The input id that you to to turn the error on for.
#' @param error_message if you want to add an additional error message.  Defaults to NULL, showing the original designed error message
#' @keywords error
#' @export
#' @examples
#' ## Only run examples in interactive R sessions
#' if (interactive()) {
#'
#'   ui <- fluidPage(
#'     # Required for error handling function
#'     shinyjs::useShinyjs(),
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::banner(inputId = "banner", type = "beta", 'This is a new service'),
#'     shinyGovukFrontend::gov_layout(size = "two-thirds",
#'       # Error text box
#'       shinyGovukFrontend::text_Input(
#'         inputId = "eventId",
#'         label = "Event Name",
#'         error = TRUE),
#'       # Button to trigger error
#'       shinyGovukFrontend::button_Input(inputId = "submit", label = "Submit")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'
#'   server <- function(input, output, session) {
#'     #Trigger error on blank submit of eventId2
#'     observeEvent(input$submit, {
#'       if (input$eventId != ""){
#'         shinyGovukFrontend::error_off(inputId = "eventId")
#'       } else {
#'         shinyGovukFrontend::error_on(
#'           inputId = "eventId",
#'           error_message = "Please complete")
#'       }
#'     })
#'   }
#'
#'   # Run the application
#'   shinyApp(ui = ui, server = server)
#' }

error_on <- function(inputId, error_message = NULL){
  shinyjs::addClass(paste0(inputId, "div"), "govuk-form-group--error")
  if (!is.null(error_message)){
    shinyjs::html(paste0(inputId, "error"), error_message)
  }
  shinyjs::show(paste0(inputId, "error"))
  shinyjs::addClass(selector = paste0("#", inputId,"div :input"), class = "govuk-textarea--error")
  shinyjs::addClass(selector = paste0("#", inputId,"file_div"), class = "govuk-input--error")
}
