\name{conicMatrix}
\alias{conicMatrix}

\title{Matrix representing a conic}

\description{
	Build a symmetric matrix representing a quadratic polynomial in two variables.
}

\usage{	conicMatrix(v)}

\arguments{
	\item{v}{(\code{vector}) a 6-length vector containing the coefficients of a quadratic polynomial.}
}

\details{
The \code{v} argument is a 6-length vector containing the
coefficients of a quadratic polynomial of the form:
\preformatted{
    P(x_1,x_2) = v_1 x_1^2 + v_2 x_1 x_2 + v_3 x_2^2 + v_4 x_1 + v_5 x_2 + v_6 
}
The associated quadratic form is:
\preformatted{
    Q(x_1,x_2,x_3) = v_1 x_1^2 + v_2 x_1 x_2 + v_3 x_2^2 + v_4 x_1 x_3 + v_5 x_2 x_3 + v_6 x_3^2 
}
}

\value{
	Return the symmetric 3x3 matrix representing the associated quadratic form. 
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
\code{\link{conicCenter}}, 
\code{\link{conicPlot}}
}

\examples{
# Equation: 2*x_1^2 + 2*x_1*x_2 + 2*x_2^2 - 20*x_1 - 28*x_2 + 10 = 0
v <- c(2,2,2,-20,-28,10)
conicMatrix(v)
}

\keyword{conics, matrix}