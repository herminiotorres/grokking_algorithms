# irb -r ./01_introduction_to_algorithms/ruby/binary_search.rb
class BinarySearch
  def self.search(list, number, low = 0, high = list.length - 1)
    middle = (low + high) / 2
    guess = list[middle]

    if guess == number
      return {position: middle, guess: guess}
    elsif guess > number
      high = middle - 1
      return self.search(list, number, low, high)
    else
      low = middle + 1
      return self.search(list, number, low, high)
    end
  rescue SystemStackError => error
    return nil
  end
end
