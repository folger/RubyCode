class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end


g = Greeting.new("hello")
p g.class
p g.class.instance_methods(false)
p g.instance_variables