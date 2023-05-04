defmodule LanguageList do
  def new() do
    []
  end

  def add(language_list, language) do
    [language | language_list]
  end

  def remove([_head | tail]) do
    tail
  end

  def first([head | _tail]) do
    head
  end

  def count(language_list) do
    length(language_list)
  end

  def functional_list?(language_list) do
    "Elixir" in language_list
  end
end
