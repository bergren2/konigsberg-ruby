a = 0
b = 1
sum = 0

while a + b < 4000000 do
  c = a + b
  a = b
  b = c

  if c % 2 == 0
    sum += c
  end
end

puts sum
