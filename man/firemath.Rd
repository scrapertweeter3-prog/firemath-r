\name{fire_math}
\alias{fire_math}
\alias{fire_savings_rate}
\title{Withdrawal-rate survival and savings-rate arithmetic}
\usage{
fire_math(portfolio, spending, real_return = 4, years = 50)
fire_savings_rate(income, expenses)
}
\arguments{
\item{portfolio}{Starting portfolio in dollars.}
\item{spending}{Annual spending in dollars.}
\item{real_return}{Constant real return, percent.}
\item{years}{Horizon in years.}
\item{income}{Annual income.}
\item{expenses}{Annual expenses.}
}
\value{fire_math: withdrawal percent, years survived, first failed year.
fire_savings_rate: savings rate and years to FI.}
\description{The 4% rule's long-horizon failure points, as arithmetic:
test whether the portfolio survives the full horizon and price the
savings rate that ends the career.}
\examples{
fire_math(1000000, 40000, real_return = 4, years = 50)
fire_savings_rate(80000, 48000)
}
