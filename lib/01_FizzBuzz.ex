defmodule FizzBuzz do
  @moduledoc """
  Documentation for Fizz Buzz.
  """

  @doc """
  Fizz Buzz works by giving a number for the loop to count to

  ## Examples

      iex> FizzBuzz.fizzBuzz(10)
      1
      2
      Fizz
      4
      Buzz
      Fizz
      7
      8
      Fizz
      Buzz
      :ok

  """
  def fizzBuzz(n) do
    Enum.each(1..n, fn x ->
      cond do
        rem(x, 3) == 0 && rem(x, 5) == 0 -> IO.puts("FizzBuzz")
        rem(x, 3) == 0 -> IO.puts("Fizz")
        rem(x, 5) == 0 -> IO.puts("Buzz")
        true -> IO.puts(x)
      end
    end)
  end
end
