% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/font.R
\name{font}
\alias{font}
\title{Font Function}
\usage{
font()
}
\description{
This function adds rge nta fonts to the app. See https://design-system.service.gov.uk/styles/typography/ for when they are allowed.
}
\examples{
if (interactive()) {

  ui <- fluidPage(
    font(),
    shinyGovukFrontend::header(
      main_text = "Example",
      secondary_text = "User Examples",
      logo="shinyGovukFrontend/images/moj_logo.png")
  )

  server <- function(input, output, session) {}

  shinyApp(ui = ui, server = server)
}
}
\keyword{font}
