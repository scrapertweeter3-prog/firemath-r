fire_math <- function(portfolio, spending, real_return = 4, years = 50) {
  stopifnot(portfolio > 0, spending > 0)
  rate <- real_return / 100
  success <- 0
  for (s in 1:years) {
    bal <- portfolio * (1 + rate)^s - spending * (((1 + rate)^s - 1) / rate)
    if (bal >= 0) success <- success + 1
  }
  list(initial_withdrawal_pct = round(100 * spending / portfolio, 2),
       years_survived = success,
       survives_full_horizon = success == years,
       first_failed_year = if (success < years) success + 1 else NA)
}
fire_savings_rate <- function(income, expenses) {
  stopifnot(income > 0, expenses >= 0, expenses < income)
  sr <- 1 - expenses / income
  list(savings_rate = round(sr, 4),
       years_to_fi_at_4pct = round(log(1 + 25 * (1 - sr) / sr) /
                                   log(1.04), 1))
}
