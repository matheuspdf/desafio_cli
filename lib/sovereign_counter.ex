defmodule SovereignCounter do
  @moduledoc """
  Historical Records of the Royal Family of Cumbúquia.

  Enter a list of names of kings and queens of Cumbúquia, each on a separate line.
  The entry will be considered complete when a blank line is entered.
  You will receive the names accompanied by their respective order of succession.
  """


  @doc """
  Main function that initiates the process of entering and displaying the names of the sovereigns.

  Prompts the user to enter the names of the kings and queens, one per line, until a blank line is entered.
  It then numbers the names with Roman numerals and displays the complete list.

  ## Examples

      iex> Aegon
      iex> Aenys
      iex> Maegor
      iex>

      Aegon I
      Aenys I
      Maegor I

  """
  def main(_args) do
    IO.puts("Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:")

    output =
      read_names()
      |> add_counter()
      |> Enum.join("\n")

    IO.puts(output)
  end

  defp read_names do
    IO.stream(:line)
    |> Stream.map(&String.trim/1)
    |> Stream.take_while(&(&1 != ""))
  end

  defp add_counter(names) do
    names
    |> Enum.reduce({%{}, []}, fn name, {counts, result} ->
      count = Map.get(counts, String.downcase(name), 0) + 1
      numbered_name = "#{String.capitalize(name)} #{IntegerToRomanNumeral.convert(count)}"
      {Map.put(counts, String.downcase(name), count), [numbered_name | result]}
    end)
    |> elem(1)
    |> Enum.reverse()
  end
end
