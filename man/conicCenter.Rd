\name{conicCenter}
\alias{conicCenter}

\title{Center of a conic}

\description{
Find the center of a conic.
}

\usage{	conicCenter(x) }

\arguments{
	\item{x}{a 6-length vector or a symmetric 3x3 matrix}
}

\details{
The \code{conicCenter} function calculates the coordinates of the center of
a conic specified by its coefficients or by its symmetric matrix.
}

\value{
A two-elements vector containing the coordinates of the center. If the
conic has no center the function raises an error.
}

\author{
  Bernard Desgraupes \cr
  \email{bernard.desgraupes@u-paris10.fr}\cr
  University of Paris Ouest - Nanterre\cr 
  Lab Modal'X\cr
}

\seealso{
\code{\link{conicAsymptotes}}, 
\code{\link{conicAxes}}, 
\code{\link{conicMatrix}}, 
\code{\link{conicPlot}}
}

\examples{
# Ellipse
# Equation: 2*x_1^2 + 2*x_1*x_2 + 2*x_2^2 - 20*x_1 - 28*x_2 + 10 = 0
v <- c(2,2,2,-20,-28,10)
conicCenter(v)

# Hyperbola
# Equation: 2*x_1^2 + 2*x_1*x_2 - 2*x_2^2 - 20*x_1 + 20*x_2 + 10 = 0
v <- c(2,2,-2,-20,20,10)
conicCenter(v)
}

\keyword{conics, matrix, center}