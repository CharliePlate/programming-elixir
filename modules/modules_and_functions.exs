defmodule Times do
  # This is just some syntactic sugar for multilines. Compiled elixir all looks like the function below
  # def double(n) do
  #   n * 2
  # end

  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(n) + double(n)
end

defmodule Sum do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)
end

def GreatestCommonDenominator do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
