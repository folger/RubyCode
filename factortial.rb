def fact(n)
  if n == 1
    return 1
  end
  n * fact(n-1)
end

puts fact(100)
