n = 1000

(1...n).each do |a|
  (a + 1...n).each do |b|
    (b + 1...n).each do |c|
      if a*a + b*b == c*c and a + b + c == n
        puts a * b * c
        exit
      end
    end
  end
end
