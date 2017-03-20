class Problem4
  def self.solve()
    greatest_palindrome
  end

  def palindromic? n # n is an integer
    s = n.to_s
    length = s.size
    for i in 0..(length / 2)
      return false unless s[i] == s[length - 1 - i]
    end
    return true
  end

  def greatest_palindrome
    largest = 0

    (100..999).reverse_each do |i|
      for j in i..999
        n = i * j
        if palindromic? n and n > largest
          largest = n
        end
      end
    end

    return largest
  end
end
