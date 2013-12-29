require 'test/unit'

class Class
  def attr_check(attribute, &validation)
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless validation.call(value)
      instance_variable_set("@#{attribute}", value)
    end

    define_method "#{attribute}" do
      instance_variable_get("@#{attribute}")
    end
  end
end

class Person
  attr_check :age do |v|
    v >= 18
  end
end

class TestCheckedAttaibute < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end

  def test_accept_valid_value
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuse_invaid_value
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end

