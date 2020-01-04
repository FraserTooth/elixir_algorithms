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
end
