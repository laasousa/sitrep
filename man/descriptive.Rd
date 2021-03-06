% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/descriptive-table.R
\name{descriptive}
\alias{descriptive}
\alias{multi_descriptive}
\title{Produces counts with respective proportions from specified variables in a dataframe.}
\usage{
descriptive(
  df,
  counter,
  grouper = NULL,
  multiplier = 100,
  digits = 1,
  proptotal = FALSE,
  coltotals = FALSE,
  rowtotals = FALSE,
  single_row = FALSE,
  explicit_missing = TRUE
)

multi_descriptive(
  df,
  ...,
  multiplier = 100,
  digits = 1,
  proptotal = FALSE,
  coltotals = TRUE,
  .id = "symptom",
  explicit_missing = TRUE
)
}
\arguments{
\item{df}{A dataframe (e.g. your linelist)}

\item{counter}{A name of the variable (in quotation marks) that you would
like to have as rows.}

\item{grouper}{A name of the variable (in quotation marks) that you would
like to have as columns.}

\item{multiplier}{What you would like to have your proportions as (default
is per 100).}

\item{digits}{The number of decimal places you would like in your
proportions (default is 1).}

\item{proptotal}{A TRUE/FALSE variable specifying whether you would
proportions to be of total cases.The default is FALSE and returns
proportions for each column.}

\item{coltotals}{Add column totals on the end}

\item{rowtotals}{Add row totals (only sums counts)}

\item{single_row}{if \code{TRUE} and \code{grouper = NA}, then the output is flattened
to a single row so that variables can be concatenated into a data frame.
Defaults to \code{FALSE}.}

\item{explicit_missing}{if \code{TRUE}, missing values will be marked as
\code{Missing} and tabulated. Defaults to \code{FALSE}, where missing values are
excluded from the computation}

\item{...}{columns to pass to descriptive}

\item{.id}{the name of the column identifying the aggregates}
}
\description{
This function has been superseeded by \code{\link[=tab_linelist]{tab_linelist()}}. Please use that
function instead.
}
\details{
The \code{descriptive()} function returns a single table with counts and
proportions of a categorical variable (\code{counter}). Adding a grouper adds
more columns, stratifying "n" and "prop", the option \code{coltotals = TRUE}
adds one row and \code{rowtotals = TRUE} (useful if a grouper is present) adds
one column.

The \code{multi_descriptive()} function allows you to combine several counter
variables into a single table where each row represents a variable and the
columns represent counts and proportions of the values within those
variables. This function assumes that all of the variables have the same
values (e.g. Yes/No values) and atttempts no correction.
}
\keyword{internal}
