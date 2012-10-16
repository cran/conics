\name{conicPlot}
\alias{conicPlot}

\title{Plot a conic}

\description{
Plot a conic (ellipse, hyperbola, or parabola) specified by a quadratic
polynomial or by a symmetric 3x3 matrix. 
}

\usage{
    conicPlot(x, type='l', npoints=100, 
            sym.axes=FALSE, center=FALSE, asymptotes=FALSE, 
            add=FALSE, xlim=NULL, ylim=NULL, 
            ax.lty=1, ax.col=palette()[1], 
            as.lty=1, as.col=palette()[1], ...)
}

\arguments{
    \item{x}{a 6-length vector or a symmetric 3x3 matrix}
    \item{type}{(\code{character}) the type of plot to draw (same meaning as with the \code{\link{plot}} function)}
    \item{npoints}{(\code{numeric}) number of points to draw}
    \item{sym.axes}{(\code{logical}) if TRUE, display the axes of the conic}
    \item{center}{(\code{logical}) if TRUE, display the center of the conic (if any)}
    \item{asymptotes}{(\code{logical}) if TRUE, display the asymptotes (hyperbolas)}
    \item{add}{(\code{logical}) if TRUE, plot over the current graphical device}
    \item{xlim}{(\code{vector}) interval for the x-coordinate}
    \item{ylim}{(\code{vector}) interval for the y-coordinate}
    \item{ax.lty}{(\code{character} or \code{numeric}) line type of the axes}
    \item{ax.col}{(\code{character} or \code{numeric}) color of the axes}
    \item{as.lty}{(\code{character} or \code{numeric}) line type of the asymptotes}
    \item{as.col}{(\code{character} or \code{numeric}) color of the asymptotes}    
    \item{...}{other parameters passed to the \code{\link{plot}} function}
}

\details{
The \code{conicPlot} function identifies the type of the conic and plots
it in the current graphical device. 

The conic is specified either by a 6-length vector representing the
coefficients of the quadratic polynomial, or by the symmetric matrix
representing the associated quadratic form. See the function
\code{\link{conicMatrix}} to build this matrix given the coefficients of
the polynomial.

It is usually a good idea to set explicitely the aspect ratio to 1 (as an
additional argument \code{asp=1} in the \code{conicPlot} function) in order
to avoid distorsions between the units of the x-axis and the y-axis. See
examples below.

}

\value{
The return value is invisible, i-e it is not printed on the console by
default but can be stored in a variable. It is a list of relevant computed
values corresponding to various elements of the conic. The following
elements can be found in the return list, depending on the kind of the
conic:
\item{kind}{the kind of the conic: \emph{"ellipse"}, \emph{"hyperbola"}, \emph{"parabola"}, or \emph{"lines"}.}
\item{axes}{the symmetry axes. See also the function \code{\link{conicAxes}}.}
\item{center}{the center of the conic. See also the function \code{\link{conicCenter}}.}
\item{asymptotes}{the slopes of the asymptotes. See also the function \code{\link{conicAsymptotes}}.}
\item{vertices}{the vertices of the conic.}
\item{intercepts}{the intercepts in the case of parallel lines.}
}

\author{
  Bernard Desgraupes \cr
  \email{bernard.desgraupes@u-paris10.fr}\cr
  University of Paris Ouest - Nanterre\cr 
  Lab Modal'X (EA 3454)\cr
}

\seealso{
\code{\link{conicAsymptotes}}, 
\code{\link{conicAxes}}, 
\code{\link{conicCenter}}, 
\code{\link{conicMatrix}}
}

\examples{
# Ellipse
# -------
# Equation: 2*x_1^2 + 2*x_1*x_2 + 2*x_2^2 - 20*x_1 - 28*x_2 + 10 = 0
v <- c(2,2,2,-20,-28,10)
conicPlot(v)
v[6] <- 20
conicPlot(v, type='p', col="red", add=TRUE)

# Symmetric matrix
m <- rbind( c(5, -3, -21),
            c(-3, 5, -19),
            c(-21, -19, 93) )
conicPlot(m)

# Hyperbola
# ---------
# Equation: 2*x_1^2 + 2*x_1*x_2 - 2*x_2^2 - 20*x_1 + 20*x_2 + 10 = 0
v <- c(2,2,-2,-20,20,10)
conicPlot(v, center=TRUE, sym.axes=TRUE, asp=1)
conicPlot(v, asymptote=TRUE, as.col="grey30", as.lty=2,
          sym.axes=TRUE, ax.col="red", ax.lty=6, col="blue", asp=1)

# Parabola
# --------
# Equation: 4*x_1^2 + 4*x_1*x_2 + 1*x_2^2 + 20*x_1 + 20*x_2 + 20 = 0
v <- c(4,4,1,20,20,20)
conicPlot(v, sym.axes=TRUE, ax.lty=2, asp=1)

# Degenerate conic
# ----------------
# Intersecting lines
# Equation:  x_1^2 - 2*x_1*x_2 - 8*x_2^2 - 2*x_1 + 14*x_2 - 3 = 0
v <- c(1,-2,-8,-2,14,-3)
conicPlot(v)
# Parallel lines
# Equation: x_1^2 - 2*x_1*x_2 + x_2^2 + 4*x_1 - 4*x_2 + 3 = 0
v <- c(1,-2,1,4,-4,3)
conicPlot(v)
# Coincident lines
# Equation: 4*x_1^2 + 12*x_1*x_2 + 9*x_2^2 - 4*x_1 - 6*x_2 + 1 = 0
v <- c(4,12,9,-4,-6,1)
conicPlot(v)

# Return value
# ------------
v <- c(2,2,2,-20,-28,10)
cplot <- conicPlot(v)
cplot$kind
cplot$vertices
cplot$center
cplot$axes

}

\keyword{conics,plot}

