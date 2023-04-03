defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - discount / 100 * before_discount
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = 22 * daily_rate(hourly_rate)
    apply_discount(monthly_rate, discount) |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    apply_discount = apply_discount(daily_rate, discount)
    budget_discount = budget / apply_discount

    Float.floor(budget_discount, 1)
  end
end
