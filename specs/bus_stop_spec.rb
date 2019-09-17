require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')
require_relative('../BusStop.rb')

class PersonTest < MiniTest::Test
  def setup()
    @bus_stop1 = BusStop.new("Ocean Terminal")
    @person1 = Person.new("Adrian", 24)
    @person2 = Person.new("Ross", 21)
    @person3 = Person.new("Iona", 27)
  end
  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop1.queue.length)
  end








end
