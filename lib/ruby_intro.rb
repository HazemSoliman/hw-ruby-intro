# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.length.zero? ? 0 : arr.sum
end

def max_2_sum(arr)
  arr.length.zero? ? 0 : arr.length == 1 ? arr[0] : (arr.sort[-1] + arr.sort[-2])
end

def sum_to_n?(arr, n)
  if arr.length < 2
    false
  else
    arr.each_with_index do |ele, idx|
      ((idx + 1)...arr.length).each do |element|
        return true if (ele + arr[element]) == n
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s == '' || !('A'..'Z').include?(s[0].upcase) || %w[A E I O U].include?(s[0].upcase)

  true
end

def binary_multiple_of_4?(s)
  return false if s == '' || s.gsub(/[01]/, '') != '' || s.to_i(2) % 4 != 0

  true
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end
