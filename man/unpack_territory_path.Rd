% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/territory_plot.R
\name{unpack_territory_path}
\alias{unpack_territory_path}
\title{retrieve the points contained in the edge of each territory}
\usage{
unpack_territory_path(trial, tiles, method = "none")
}
\arguments{
\item{trial}{name of territory trial that should be selected}

\item{tiles}{vesalius tiles}

\item{method}{string - method for how territories edges should be
selected}
}
\value{
a data frame containing edge of each territory.
}
\description{
retrieve the points contained in the edge of each territory
}
\details{
Here we are using convex as start point. Essentially, we 
order the coordinates based on their polar coordinates using the 
median coordinate as the center point.
}
