defmodule Params do
  def func(p1, p2 \\ 123)

  def func(p1, p2) when is_list(p1) do
    "You said #{p2} with a list"
  end

  def func(p1, p2), do: "You passed in #{p1} and #{p2}"
end

defmodule Chop do
  def guess(actual, range) do
    mid = div(range.first + range.last, 2)
    guess(actual, range, mid)
  end

  def guess(actual, range, current) when current > actual do
    IO.puts("Is it #{current}?")
    guess(actual, Range.new(range.first, current - 1))
  end

  def guess(actual, range, current) when current < actual do
    IO.puts("Is it #{current}?")
    guess(actual, Range.new(current + 1, range.last))
  end

  def guess(actual, _, current) when current === actual do
    IO.puts("Yes, it's #{current}!")
    current
  end
end
