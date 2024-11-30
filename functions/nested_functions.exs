prefix = fn pre ->
  fn post ->
    "{#{pre} #{post}}"
  end
end

mrs = prefix.("Mrs.")
elixir = prefix.("Elixir")

IO.puts(mrs.("Smith"))
IO.puts(elixir.("Rocks!"))
