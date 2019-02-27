def bagi(a, b)
  begin
    a/b
  rescue
    0
  end
end

puts bagi(8, 2)
puts bagi(8, 0)

