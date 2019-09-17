require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
  end

end
