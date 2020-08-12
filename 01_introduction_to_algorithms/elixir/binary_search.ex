defmodule BinarySearch do
  def search([], _number), do: nil
  def search(list, number) do
    search(list, number, 0, Enum.count(list))
  end

  defp search(list, number, low, high) do
    middle = div((low + high), 2)
    guess = Enum.at(list, middle)

    cond do
      guess == number ->
        [position: middle, guess: guess]

      guess > number ->
        high = middle - 1
        search(list, number, low, high)

      true ->
        low = middle + 1
        search(list, number, low, high)
    end
  end
end
