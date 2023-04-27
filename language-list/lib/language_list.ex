defmodule LanguageList do
  def new() do
    []
  end

  def add(language_list, language) do
    [language | language_list]
  end

  def remove(language_list) do
    tl language_list
  end

  def first(language_list) do
    hd language_list
  end

  def count(language_list) do
    length(language_list)
  end

  def functional_list?(language_list) do
    "Elixir" in language_list
  end
end
