a = 0
b = 1
index = 2
limit = 10**999

while a + b < limit do
  c = a + b
  a = b
  b = c

  index += 1
end

puts index
