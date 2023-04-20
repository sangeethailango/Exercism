defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair = {:milliliter, _}) do
    {:milliliter, elem(volume_pair, 1)}
  end

  def to_milliliter(volume_pair = {:cup, _}) do
    cup_to_ml = elem(volume_pair, 1) * 240
    {:milliliter, cup_to_ml}
  end

  def to_milliliter(volume_pair = {:fluid_ounce, _}) do
    fluid_ounce_to_ml = elem(volume_pair, 1) * 30
    {:milliliter, fluid_ounce_to_ml}
  end

  def to_milliliter(volume_pair = {:teaspoon, _}) do
    teaspoon_to_ml = elem(volume_pair, 1) * 5
    {:milliliter, teaspoon_to_ml}
  end

  def to_milliliter(volume_pair = {:tablespoon, _}) do
    tablespoon_to_ml = elem(volume_pair, 1) * 15
    {:milliliter, tablespoon_to_ml}
  end

  def from_milliliter(volume_pair, unit = :milliliter) do
    {unit, elem(volume_pair, 1)}
  end

  def from_milliliter(volume_pair, unit = :cup) do
    ml_to_cup = elem(volume_pair, 1) / 240
    {unit, ml_to_cup}
  end

  def from_milliliter(volume_pair, unit = :fluid_ounce) do
    ml_to_fluid_ounce = elem(volume_pair, 1) / 30
    {unit, ml_to_fluid_ounce}
  end

  def from_milliliter(volume_pair, unit = :teaspoon) do
    ml_to_teaspoon = elem(volume_pair, 1) / 5
    {unit, ml_to_teaspoon}
  end

  def from_milliliter(volume_pair, unit = :tablespoon) do
    ml_to_tablespoon = elem(volume_pair, 1) / 15
    {unit, ml_to_tablespoon}
  end

  def convert(volume_pair, unit) do
    to_milliliter = to_milliliter(volume_pair)
    from_milliliter(to_milliliter, unit)
  end
end
