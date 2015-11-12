# I worked on this challenge with Jonathan Huang


# Your Solution Below

def valid_triangle?(a, b, c)
  if a < b + c && b < c + a && c < a + b
    then true
  else false
  end
end