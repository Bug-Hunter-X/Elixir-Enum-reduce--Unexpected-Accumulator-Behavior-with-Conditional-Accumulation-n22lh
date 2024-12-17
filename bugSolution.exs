```elixir
list = [1, 2, 3, 4, 5]

filtered_list = Enum.filter(list, fn x -> x > 3 end)

result = Enum.reduce(filtered_list, 0, fn x, acc -> acc + x end)
IO.puts(result) 
```