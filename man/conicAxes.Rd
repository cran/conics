\name{conicAxes}
\alias{conicAxes}

\title{Axes of a conic}

\description{
Find the symmetry axes of a conic.
}

\usage{	conicAxes(x) }

\arguments{
	\item{x}{a 6-length vector or a symmetric 3x3 matrix}
}

\details{
The \code{conicAxes} function calculates the coordinates of the symmetry axes of
a conic specified by its coefficients or by its symmetric matrix.

The direction vectors of the axes are the eigenvectors of the top-left 2x2
submatrix of the matrix representing the conic.

}

\value{
A 2x2 matrix whose columns are the direction vectors of the axes. In order
to find the coordinates of the center, see the function
\code{\link{conicCenter}}.

}

\author{
  Bernard Desgraupes \cr
  \email{bernard.desgraupes@u-paris10.fr}\cr
  University of Paris Ouest - Nanterre\cr 
  Lab Modal'X (EA 3454)\cr
}

\seealso{
\code{\link{conicAsymptotes}}, 
\code{\link{conicCenter}}, 
\code{\link{conicMatrix}}, 
\code{\link{conicPlot}}
}

\examples{
# Ellipse
# Equation: 2*x_1^2 + 2*x_1*x_2 + 2*x_2^2 - 20*x_1 - 28*x_2 + 10 = 0
v <- c(2,2,2,-20,-28,10)
conicAxes(v)

# Hyperbola
# Equation: 2*x_1^2 + 2*x_1*x_2 - 2*x_2^2 - 20*x_1 + 20*x_2 + 10 = 0
v <- c(2,2,-2,-20,20,10)
conicAxes(v)
}

\keyword{conics, matrix, axes}