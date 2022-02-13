# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  a = 0
  arr.each do |x|
    a += x
  end
  return a
end

def max_2_sum arr
  # YOUR CODE HERE
  #in-place sorting
  arr.sort!
  size = arr.length
  if size == 0
    return 0
  elsif size == 1
    return arr[0]
  else 
    return arr[size-1] + arr[size-2]
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.sort!
  i = 0
  j = arr.length()-1
  while i<j
    if (arr[i] + arr[j] == n)
      return true
    elsif (arr[i] + arr[j] < n)
      i += 1
    else 
      j -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, #{name}"
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if(s=~/^[a-zA-Z]+$/i)
    if(s=~/^[^AIEOU]/i)
      return true
    else
      return false
    end
  end
  return false
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s=~/^[01]+$/&& s.to_i%4==0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
    def initialize(isbn,price)
      if(isbn.empty?||price<=0)
        raise ArgumentError
      end
      @isbn=isbn
      @price=price
    end 
    def price_as_string
      str="$%.2f"%price
      return str
    end
end
