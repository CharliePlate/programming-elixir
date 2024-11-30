# Part 1
fizzbuzz = fn
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_, _, a} -> a
end

# Part 2
rem_fizzbuzz = fn
  n -> fizzbuzz.({rem(n, 3), rem(n, 5), n})
end

for n <- 1..15 do
  IO.puts(rem_fizzbuzz.(n))
end
