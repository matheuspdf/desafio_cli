defmodule IntegerToRomanNumeralTest do
  use ExUnit.Case
  doctest IntegerToRomanNumeral

  describe "convert/1" do
    test "returns error for negative integers" do
      assert IntegerToRomanNumeral.convert(-1) ==
               {:error, "You should provide a number between 1 and 3999"}
    end

    test "returns error when number is > 3999" do
      assert IntegerToRomanNumeral.convert(4000) ==
               {:error, "You should provide a number between 1 and 3999"}
    end

    test "convert 1 to I" do
      assert IntegerToRomanNumeral.convert(1) == "I"
    end

    test "convert 2 to II" do
      assert IntegerToRomanNumeral.convert(2) == "II"
    end

    test "convert 3 to III" do
      assert IntegerToRomanNumeral.convert(3) == "III"
    end

    test "convert 4 to IV" do
      assert IntegerToRomanNumeral.convert(4) == "IV"
    end

    test "convert 5 to V" do
      assert IntegerToRomanNumeral.convert(5) == "V"
    end

    test "convert 6 to VI" do
      assert IntegerToRomanNumeral.convert(6) == "VI"
    end

    test "convert 7 to VII" do
      assert IntegerToRomanNumeral.convert(7) == "VII"
    end

    test "convert 8 to VIII" do
      assert IntegerToRomanNumeral.convert(8) == "VIII"
    end

    test "convert 9 to IX" do
      assert IntegerToRomanNumeral.convert(9) == "IX"
    end

    test "convert 10 to X" do
      assert IntegerToRomanNumeral.convert(10) == "X"
    end

    test "convert 45 to XLV" do
      assert IntegerToRomanNumeral.convert(45) == "XLV"
    end

    test "convert 52 to LII" do
      assert IntegerToRomanNumeral.convert(52) == "LII"
    end

    test "convert 99 to XCIX" do
      assert IntegerToRomanNumeral.convert(99) == "XCIX"
    end

    test "convert 207 to CCVII" do
      assert IntegerToRomanNumeral.convert(207) == "CCVII"
    end

    test "convert 365 to CCCLXV" do
      assert IntegerToRomanNumeral.convert(365) == "CCCLXV"
    end

    test "convert 593 to DXCIII" do
      assert IntegerToRomanNumeral.convert(593) == "DXCIII"
    end

    test "convert 792 to DCCXCII" do
      assert IntegerToRomanNumeral.convert(792) == "DCCXCII"
    end

    test "convert 2185 to MLXVII" do
      assert IntegerToRomanNumeral.convert(1067) == "MLXVII"
    end

    test "convert 3471 to MMCCCLXXIV" do
      assert IntegerToRomanNumeral.convert(2374) == "MMCCCLXXIV"
    end

    test "convert 3999 to MMMCMXCIX" do
      assert IntegerToRomanNumeral.convert(3999) == "MMMCMXCIX"
    end
  end
end
