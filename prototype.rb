object = Object.new

dog = object.clone

def dog.sit
  puts 'I am sitting'
end

dog.sit

mydog = dog.clone

mydog.sit
