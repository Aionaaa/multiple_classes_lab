require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Adrian", 24)
    @person2 = Person.new("Ross", 21)
    @person3 = Person.new("Iona", 27)

  end

end
