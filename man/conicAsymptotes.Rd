\name{conicAsymptotes}
\alias{conicAsymptotes}

\title{Asymptotes of a conic}

\description{
Find the slopes of the asymptotic directions of a conic.
}

\usage{	conicAsymptotes(x) }

\arguments{
	\item{x}{a 6-length vector or a symmetric 3x3 matrix}
}

\details{
The \code{conicAsymptotes} function calculates the slopes of the asymptotic
directions of a conic specified by its coefficients or by its symmetric
matrix.

If the equation of the conic is
\preformatted{
    v_1 x_1^2 + v_2 x_1x_2 + v_3 x_2^2 + v_4 x_1 + v_5 x_2 + v_6 = 0
}  
the slopes of the asymptotes are the roots of the equation at infinity of the conic:
\preformatted{
    v_1 + v_2 t + v_3 t^2 = 0
}  
where \code{t=x_2/x_1}.

}

\value{
A vector containing the slopes: two values in the case of a hyperbola or of
intersecting lines, one value in the case of a parabola or of parallel
lines. In the case of an ellipse (which has no points at infinity), the
function returns an empty vector.

}

\author{
  Bernard Desgraupes \cr
  \email{bernard.desgraupes@u-paris10.fr}\cr
  University of Paris Ouest - Nanterre\cr 
  Lab Modal'X (EA 3454)\cr
}

\seealso{
\code{\link{conicAxes}}, 
\code{\link{conicCenter}}, 
\code{\link{conicMatrix}}, 
\code{\link{conicPlot}}
}

\examples{
# Hyperbola
# Equation: 2*x_1^2 + 2*x_1*x_2 - 2*x_2^2 - 20*x_1 + 20*x_2 + 10 = 0
v <- c(2,2,-2,-20,20,10)
conicAsymptotes(v)

# Ellipse
# Equation: 2*x_1^2 + 2*x_1*x_2 + 2*x_2^2 - 20*x_1 - 28*x_2 + 10 = 0
v <- c(2,2,2,-20,-28,10)
# Should return an empty vector (an ellipse has no asymptotes!):
conicAsymptotes(v)

}

\keyword{conics, matrix, asymptotes}