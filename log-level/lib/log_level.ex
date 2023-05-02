defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      not legacy? && level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      not legacy? && level == 5 -> :fatal
      true -> :unknown 
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) == :error || to_label(level, legacy?) == :fatal -> :ops
      to_label(level, legacy?) == :unknown && legacy? -> :dev1
      to_label(level, legacy?) == :unknown && not legacy? -> :dev2
      true -> false
    end  
  end
end  
