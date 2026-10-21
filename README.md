# firemath (R)

Withdrawal-rate survival and savings-rate arithmetic for early retirement:
does the portfolio survive a 50-year horizon, and what does your savings
rate buy in years of freedom. Companion to the withdrawal-math writing on
[Firenomics](https://firenomics.com).

## Example

```r
fire_math(1000000, 40000, real_return = 4, years = 50)
# $initial_withdrawal_pct 4  $years_survived 50  $survives_full_horizon TRUE

fire_savings_rate(80000, 48000)
# $savings_rate 0.4  $years_to_fi_at_4pct 27.1
```
