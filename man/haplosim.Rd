\name{haplosim}

\alias{haplosim}

\title{Haplotype data simulator}

\description{Generates a random sample of haplotypes, given an haplotype object created from a data set.}

\usage{haplosim(n, hap, which.snp = NULL, seed = NULL, force.polym = TRUE)}

\arguments{
  \item{n}{Number of haplotypes to generate}
  \item{hap}{Haplotype object created with \code{haplodata}}
  \item{which.snp}{A vector specifying which SNPs to include} 
  \item{seed}{Seed for the random number generator}
  \item{force.polym}{if TRUE, all loci are polymorphic}
}

%\details{}

\value{
  A list containing:
  \item{data}{Simulated sample}
  \item{freqs}{Allele frequency vector}
  \item{cor}{Correlation matrix}
  \item{div}{Locus-specific diversity scores}
  \item{mse.freqs}{MSE of allele frequencies}
  \item{mse.cor}{MSE of correlations}
}


\references{
Montana, G. HapSim: a simulation tool for generating haplotype data with
pre-specified allele frequencies and LD coefficients. 2005.
}

\author{ Giovanni Montana }

% \note{ ~~further notes~~ }

\seealso{See also \code{ \link{haplodata} }}

\examples{

data(ACEdata)

# create the haplotype object 
x <- haplodata(ACEdata) 

# simulates a first sample of 100 haplotypes using all markers
y1 <- haplosim(100, x) 

# compares allele frequencies in real and simulated samples
plot(x$freqs, y1$freqs, title=paste("MSE:",y1$mse.freqs)); abline(a=0, b=1)

# compares LD coefficients in real and simulated samples
ldplot(mergemats(x$cor, y1$cor), ld.type='r') 

# simulates a second sample of 1000 haplotypes using the first 20 markers only
y2 <- haplosim(1000, which.snp=seq(20), x) 

}

\keyword{utilities}