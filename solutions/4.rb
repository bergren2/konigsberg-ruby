class Problem4
  def self.solve(d)
    largest = 0

    (10**(d-1)...10**d).reverse_each do |i|
      for j in i..10**d
        n = i * j
        if palindromic? n and n > largest
          largest = n
        end
      end
    end

    return largest
  end

  private_class_method def self.palindromic? n
    s = n.to_s
    length = s.size
    for i in 0..(length / 2)
      return false unless s[i] == s[length - 1 - i]
    end
    return true
  end
end
