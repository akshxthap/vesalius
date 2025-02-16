% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/territory_plot.R
\name{territory_plot}
\alias{territory_plot}
\title{territory_plot - plotting Vesalius territories}
\usage{
territory_plot(
  vesalius_assay,
  trial = "last",
  split = FALSE,
  highlight = NULL,
  contour = "None",
  randomise = TRUE,
  cex = 10,
  cex_pt = 1,
  alpha = 0.65,
  use_image = FALSE
)
}
\arguments{
\item{vesalius_assay}{a vesalius_Assay object}

\item{trial}{character string describing which segmentation trial
to use. Default is "last" which is the last segmentation trial used.}

\item{split}{logical - If TRUE, territories will be plotted in
separate panels}

\item{highlight}{numeric vector describing which territories should be 
highlighted.}

\item{contour}{if territory contours should be added. Availble:
"None", "convex", "concave"}

\item{randomise}{logical - If TRUE, colour palette will be randomised.}

\item{cex}{numeric describing font size multiplier.}

\item{cex_pt}{numeric describing point size multiplier.}

\item{alpha}{opacity factor ]0,1[}
}
\value{
a ggplot object
}
\description{
territory_plot - plotting Vesalius territories
}
\details{
Territory plots show all territories in false colour after they
have been isolated from a Vesalius image.

Note that this function can be applied to image segments, territories,
and layers.
}
\examples{
\dontrun{
data(vesalius)
# First we build a simple object
ves <- build_vesalius_object(coordinates, counts)
# We can do a simple run
ves <- build_vesalius_embeddings(ves)

# simple smoothing
ves <- smooth_image(ves, dimensions = seq(1, 30))

# quick segmentation
ves <- segment_image(ves, dimensions = seq(1, 30))

# isolate territories
ves <- isolate_territories(ves)

# Plot Territories
p <- territory_plot(ves)
}
}
