defmodule FizzBuzz do
  @moduledoc """
  Documentation for Fizz Buzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirAlgorithms.hello()
      :world

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
