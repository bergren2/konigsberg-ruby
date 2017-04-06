class Problem4 < EulerProblem
  def initialize number_of_digits
    @number_of_digits = number_of_digits
  end

  def solution
    largest = 0
    lower_bound = 10**(@number_of_digits-1)
    upper_bound = 10**@number_of_digits

    (lower_bound...upper_bound).reverse_each do |i|
      for j in i..upper_bound
        n = i * j
        largest = n if palindromic? n and n > largest
      end
    end

    largest
  end

  def palindromic? n
    s = n.to_s
    length = s.size
    for i in 0..(length / 2)
      return false unless s[i] == s[length - 1 - i]
    end
    return true
  end
end
