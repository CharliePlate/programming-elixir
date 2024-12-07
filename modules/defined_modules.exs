# Convert a float to a string with two decimal digits
IO.puts(:io.format("~.2f~n", [3.14159]))

# Get the value of an operating-system environment variable.
IO.puts(System.get_env("PATH"))

# Return the extension component of a file name
IO.puts(Path.extname("~/hello_world.txt"))

# Return the process's current working directory
IO.inspect(File.cwd())

# Convert a string containing JSON into Elixir data structures (Just find, don't install)
# jason

# Execute a command in your operating system shell
System.cmd("echo", ["hello world"])
