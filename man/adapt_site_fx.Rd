% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Testing_Functions.R
\name{adapt_site_fx}
\alias{adapt_site_fx}
\title{Adaptively generate new test site}
\usage{
adapt_site_fx(
  test_reports,
  adapt_freq,
  n_sites,
  site_geo,
  geo_pops,
  t0,
  date_now,
  test_criteria
)
}
\arguments{
\item{test_reports}{previous testing data to base adaptive decision on}

\item{adapt_freq}{timeframe to look back at test reports to make decision}

\item{n_sites}{number of adaptive sites to add}

\item{site_geo}{geography to place tests by. either `cbg`, `ct`, `zip`, or `nbhd`}

\item{geo_pops}{data.table of site geo ids/names and their population, necessary if using `wper_pos` as testing criteria}

\item{t0}{start time of simulation as a date}

\item{date_now}{current date of simulation}

\item{test_criteria}{either `per_pos` to place sites based on areas with highest percent positivity, `n_pos` to place sites based on areas with highest raw number of positive cases, `wper_pos` for percent positive times the site geo population (weighted percent positive), or `n_tests` to place sites based on areas with least number of tests conducted}
}
\value{
Census tract code of new test site(s)
}
\description{
Function to look in testing data and find census tract in which to place new testing site
}
