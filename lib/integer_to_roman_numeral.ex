defmodule IntegerToRomanNumeral do
  @moduledoc """
  Convert an integer (x) to roman numerals.
  0 > x < 4000
  """

  @roman_mappings [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  @spec convert(any()) :: bitstring() | {:error, <<_::368>>}
  @doc """
  The convert function receives an integer and returns the roman numeral representation of it.
  """
  def convert(number) when is_integer(number) and number > 0 and number < 4000 do
    to_roman(number, "")
  end

  def convert(_) do
    {:error, "You should provide a number between 1 and 3999"}
  end


  defp to_roman(0, acc), do: acc

  defp to_roman(number, acc) do
    {arabic, roman} = Enum.find(@roman_mappings, fn {arabic, _} -> number >= arabic end)
    to_roman(number - arabic, acc <> roman)
  end
end
