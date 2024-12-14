defmodule MyList do
  # Ex. 1: Write a mapsum function that takes a list and a function. It applies the function to each element in the list and then sums the results
  def mapsum(list, func), do: mapsum(list, 0, func)
  def mapsum([], value, _func), do: value
  def mapsum([head | tail], value, func), do: mapsum(tail, value + func.(head), func)

  # Ex. 2: Write a max(list) that returns the elements with the maximum calue in the list (this is slightly trickier than it sounds)
  def max([]), do: nil
  def max([head | tail]), do: MyList.max(tail, head)
  def max([], curr_max), do: curr_max
  def max([head | tail], curr_max) when head >= curr_max, do: MyList.max(tail, head)
  def max([head | tail], curr_max) when head < curr_max, do: MyList.max(tail, curr_max)

  # Ex. 3: An Elixir single-quoted string is actually a list of individual character codes. Wriate a caesar(list, n)
  # function that adds n to each list element, wrapping if the addition results in a character greater than z
  def caesar([], _n), do: []
  def caesar([head | tail], n) when head + n <= ?z, do: [head + n | caesar(tail, n)]

  def caesar([head | tail], n) when head + n > ?z,
    do: [head + n - (?z - ?a + 1) | caesar(tail, n)]

  # Ex. 4: Write a runction MyList.span(from, to) that returns a list of numbers from from up to to
  def span(from, to) when from > to and is_number(from) and is_number(to), do: []

  def span(from, to) when from <= to and is_number(from) and is_number(to),
    do: [from | span(from + 1, to)]

  def span(_), do: raise("something is invalid")
end

# Ex. 1
IO.puts(MyList.mapsum([1, 2, 3], fn num -> num + 1 end))
# Ex. 2
IO.puts(MyList.max([1, 2, 3]))
# Ex. 3
IO.inspect(MyList.caesar(~c"ryvkve", 13))
# Ex. 4
IO.inspect(MyList.span(2, 5))
