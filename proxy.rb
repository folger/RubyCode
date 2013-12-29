require 'delegate'

class PP
  def out
    puts 'lun'
  end
end

p = SimpleDelegator.new(PP.new)
puts p.class
p.out

class ImageProxy < Delegator

  def initialize(data)
  @data = data
  @image = nil
  end

  def __getobj__
    if @image == nil
      @image = LoadImage(@data)
    end
    @image
  end

end
