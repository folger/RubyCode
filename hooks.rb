class String
  def self.inherited(subclass)
    puts "#{self} is inherited by #{subclass}"
  end
end

class MyString < String
end


