defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    if power_pellet_active && touching_ghost do
      true
    else
      false
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    if touching_power_pellet || touching_dot do
      true
    else
      false
    end
  end

  def lose?(power_pellet_active, touching_ghost) do
    if power_pellet_active == false && touching_ghost do
      true
    else
      false
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    if (has_eaten_all_dots && touching_ghost == false) || power_pellet_active do
      true
    else
      false
    end
  end
end
