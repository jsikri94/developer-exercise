class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split
    words.map! { |item|
      if item.size > 4
        if item.match(/^[A-Z][a-z]+[?.,:;!]*$/)
          item.gsub(/\w+/,"Marklar")
        elsif item.match(/^[a-z]+[?.,:;!]*$/)
          item.gsub(/\w+/,"marklar")
        end
      else
        item
      end
    }
    words.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    memo = []
    even_sum = 0
    (0..nth).each do |i|
      memo[i] = i < 2 ? i : memo[i-1] + memo[i-2]
      if memo[i] % 2 == 0
        even_sum += memo[i]
      end
    end
    return even_sum
  end
end