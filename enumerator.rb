a = [1,2,3]
b = [9,8,7]

ia = a.each
ib = b.each

result = []
loop do
  result.push(ia.next)
  result.push(ib.next)
end

puts result

