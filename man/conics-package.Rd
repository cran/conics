\name{conics}
\alias{conics}
\alias{conics-package}

\title{~ Conics plotting ~}
\description{
  \tabular{ll}{
    Package: \tab conics\cr
    Type: \tab Package\cr
    Version: \tab 0.1\cr
    Date: \tab 2012-10-16\cr
    License: \tab  GPL (>= 2) \cr
  }
}

\details{
  The \code{conics} package provides simple functions to plot conics. A
  conic is a plane algebraic curve of degree 2: it is the set of zeroes of
  a polynomial of degree 2 in 2 variables, that is to say the set of points 
  \code{(x_1,x_2)} satisfying an equation of the form 
\preformatted{
    P(x_1,x_2) = v_1 x_1^2 + v_2 x_1x_2 + v_3 x_2^2 + v_4 x_1 + v_5 x_2 + v_6 = 0
}  

Non-degenerate conics include the ellipses, the hyperbolas and the
parabolas. Degenerate conics are pairs of lines.

}

\references{
For more information about the algebraic background of conics and their
matrix representation, see the vignette accompanying this package. To
display the vignette, type the following instruction in the R console :
\preformatted{> vignette("conics")}
}

\section{Author}{
  Bernard Desgraupes \cr
  \email{bernard.desgraupes@u-paris10.fr}\cr
  University of Paris Ouest - Nanterre \cr 
  Lab Modal'X (EA 3454)\cr
}

\seealso{
The following functions are available:
\code{\link{conicAsymptotes}}, 
\code{\link{conicAxes}}, 
\code{\link{conicCenter}}, 
\code{\link{conicMatrix}}, 
\code{\link{conicPlot}}
}

\keyword{package}
