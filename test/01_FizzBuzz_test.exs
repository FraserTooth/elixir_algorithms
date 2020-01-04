defmodule FizzBuzzTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  doctest FizzBuzz

  test "works up to 10" do
    fun = fn ->
      assert FizzBuzz.fizzBuzz(10) == :ok
    end

    assert capture_io(fun) ==
             "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n"
  end

  test "works up to 15" do
    fun = fn ->
      assert FizzBuzz.fizzBuzz(15) == :ok
    end

    assert capture_io(fun) ==
             "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n"
  end
end
