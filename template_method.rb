dice = Object.new

def dice.each
  10.times do
    yield rand(6) + 1
  end
end

dice.extend(Enumerable)

dice.reject{|x| x<=3}.each {|x| puts x}
