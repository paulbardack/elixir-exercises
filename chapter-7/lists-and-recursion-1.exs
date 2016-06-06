defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)
end

IO.puts MyList.mapsum [1,2,3,4], &(&1 + 2) # 18
IO.puts MyList.mapsum [1,2,3,4], &(&1 - 2) # 2
IO.puts MyList.mapsum [1,2,3,4], &(&1 * 2) # 20
IO.puts MyList.mapsum [1,2,3,4], &(&1 / 2) # 5.0
