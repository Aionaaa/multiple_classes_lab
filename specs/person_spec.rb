require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Adrian", 24)
  end

end
