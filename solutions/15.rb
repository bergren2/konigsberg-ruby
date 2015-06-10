# here we form a basis of vertices that uses that diagonal
# opposite of the diagonal formed by the start and finish vertices
# and notice a binomial coefficient pattern for routes to and from
# members of this basis.
def grid n
  v = n + 1 # number of vertices
  coefficient = 1
  routes = 0
  1.upto(v) do |i|
    routes += coefficient * coefficient
    coefficient = coefficient * (v - i) / (i)
  end
  routes
end

puts grid 20
