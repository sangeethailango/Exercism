defmodule BirdCount do
  def today(list) when list == [] do
    nil
  end

  def today([hd | _tl]) do
    hd
  end

  def increment_day_count(list) when list == [] do
    [1]
  end

  def increment_day_count([hd | tl]) do
    [1 + hd | tl]
  end

  def has_day_without_birds?(list) do
    0 in list
  end

  def total([]), do: 0

  def total([hd | tl]) do
    hd + total(tl)
  end

  def busy_days([]), do: 0

  def busy_days([hd | tl]) when hd >= 5 do
    1 + busy_days(tl)
  end

  def busy_days([hd | tl]) when hd < 5 do
    0 + busy_days(tl)
  end
end
