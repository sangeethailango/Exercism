defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      legacy? == false && level == 0 -> :trace
      (legacy? == false || true) && level == 1 -> :debug
      (legacy? == false || true) && level == 2 -> :info
      (legacy? == false || true) && level == 3 -> :warning
      (legacy? == false || true) && level == 4 -> :error
      legacy? == false && level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) == :error || to_label(level, legacy?) == :fatal -> :ops
      to_label(level, legacy?) == :unknown && legacy? == true -> :dev1
      to_label(level, legacy?) == :unknown && legacy? == false -> :dev2
      true -> false
    end
  end
end
