% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/mldr.R
\name{mldr}
\alias{mldr}
\title{Creates an object representing a multilabel dataset}
\usage{
mldr(filename = NULL, use_xml = TRUE, auto_extension = TRUE,
  xml_file = NULL)
}
\arguments{
\item{filename}{Name of the dataset}

\item{use_xml}{Specifies whether to use an
associated XML file to identify the labels. Defaults to TRUE}

\item{auto_extension}{Specifies whether to add
the '.arff' and '.xml' extensions to the filename
where appropriate. Defaults to TRUE}

\item{xml_file}{Path to the XML file. If not
provided, the filename ending in ".xml" will be
assumed}
}
\value{
An mldr object containing the multilabel dataset
}
\description{
Reads a multilabel dataset from a file and returns an \code{mldr} object
containing the data and additional measures. The file has to be in ARFF format.
The label information could be in a separate XML file (MULAN style) or in the
the arff header (MEKA style)
}
\examples{
library(mldr)
\dontrun{
# Read "yeast.arff" and labels from "yeast.xml"
mymld <- mldr("yeast")

# Read "yeast-tra.arff" and labels from "yeast.xml"
mymld <- mldr("yeast-tra", xml_file = "yeast.xml")

# Read MEKA style dataset, without XML file and giving extension
mymld <- mldr("IMDB.arff", use_xml = FALSE, auto_extension = FALSE)
}
}
\seealso{
\code{\link{mldr_from_dataframe}}, \code{\link{summary.mldr}}
}

