# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size==0
    return 0
  elsif arr.size==1
    return arr[0]
  else
    arr=arr.sort()
    return arr[arr.length-1]+arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length==0
    return false
  elsif arr.length==1
    return false
  end
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if arr[j]==n-arr[i]
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
    return false
  elsif s.match(/\s/)
    print "Incorrect results for input: \"#{s}\""
  elsif (s[0]>='a'&&s[0]<='z')||(s[0]>='A'&&s[0]<='Z')
    if s[0]!='a'&&s[0]!='e'&&s[0]!='i'&&s[0]!='o'&&s[0]!='u'&&s[0]!='A'&&s[0]!='E'&&s[0]!='I'&&s[0]!='O'&&s[0]!='U'
      #print "'#{s}'is a consonant"
      return true
    else
      print "'#{s}' is not a consonant"
    end
  else
      return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
    print "The empty string is not a valid binary number!"
    return false
  elsif s.length==1
      if s[0]=='0'
        return true
      else
        return false
      end
  elsif s.length>1
    for i in 0..s.length-1
      if s[i]!='0'&&s[i]!='1'
        print "'#{s}' is not a valid binary number!"
        return false
      end
    end
      if s[s.length-1]=='0'&&s[s.length-2]=='0'
        #print "yes"
        return true
      else
        return false
      end
    
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn, price)
     @isbn=isbn
     @price=price
     if isbn.length==0||price<=0
       raise ArgumentError
     
     end
  end
  
    def price_as_string()
    @price="$"+"%0.2f"% @price.to_f
    #sprintf("%.2f", @booprice.to_f)
    #puts '$'+ @price
    end

end

  

