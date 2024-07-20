defmodule SovereignCounterTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest SovereignCounter

  describe "main/0" do
    test "counts and prints names correctly" do
      input = """
      Victoria
      Victoria
      Elizabeth
      Elizabeth
      Alice
      """

      expected_output = """
      Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:
      Victoria I
      Victoria II
      Elizabeth I
      Elizabeth II
      Alice I
      """

      assert capture_io([input: input], fn ->
               SovereignCounter.main([])
             end) == expected_output
    end

    test "counts and prints other names correctly" do
      input = """
      Eduardo
      Maria
      Daniel
      Eduardo
      """

      expected_output = """
      Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:
      Eduardo I
      Maria I
      Daniel I
      Eduardo II
      """

      assert capture_io([input: input], fn ->
               SovereignCounter.main([])
             end) == expected_output
    end

    test "counts and prints equal names correctly" do
      input = """
      João
      João
      João
      João
      """

      expected_output = """
      Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:
      João I
      João II
      João III
      João IV
      """

      assert capture_io([input: input], fn ->
               SovereignCounter.main([])
             end) == expected_output
    end

    test "counts and prints names with upper and lower case letters correctly" do
      input = """
      Aegon
      aeGOn
      aegoN
      AeGoN
      """

      expected_output = """
      Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:
      Aegon I
      Aegon II
      Aegon III
      Aegon IV
      """

      assert capture_io([input: input], fn ->
               SovereignCounter.main([])
             end) == expected_output
    end
  end
end
