require 'singleton'

class PP
  include Singleton

  def out
    puts 'folger'
  end
end

PP.instance.out


