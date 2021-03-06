% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gov_layout.R
\name{gov_layout}
\alias{gov_layout}
\title{Page Layout Function}
\usage{
gov_layout(...)
}
\arguments{
\item{...}{include the components of the UI that you want within the main page.}
}
\description{
This function loads the page layout
}
\examples{
if (interactive()) {
  ui <- fluidPage(
    shinyGovukFrontend::header(
      main_text = "Example",
      secondary_text = "User Examples",
      logo="shinyGovukFrontend/images/moj_logo.png"),
    shinyGovukFrontend::gov_layout(
      shinyGovukFrontend::panel_output(
        inputId = "panel1",
        main_text = "Application Complete",
        sub_text = "Thank you for submitting your application.  Your reference is xvsiq")
    ),
    shinyGovukFrontend::footer(full = TRUE)
  )

  server <- function(input, output, session) {}
  shinyApp(ui = ui, server = server)
}
}
\keyword{style}
