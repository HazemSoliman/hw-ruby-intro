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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
