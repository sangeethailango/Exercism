defmodule LanguageList do
  def new() do
    []
  end

  def add(language_list, language) do
    [language | language_list]
  end

  def remove(language_list) do
    first_element = List.first(language_list)
    first_element = [first_element]
    language_list -- first_element
  end

  def first(language_list) do
    List.first(language_list)
  end

  def count(language_list) do
    length(language_list)
  end

  def functional_list?(language_list) do
    Enum.member?(language_list, "Elixir")
  end
end
