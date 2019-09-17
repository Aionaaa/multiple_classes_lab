require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')
require_relative('../BusStop.rb')
class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Adrian", 24)
    @person2 = Person.new("Ross", 21)
    @person3 = Person.new("Iona", 27)
    @stop1 = BusStop.new("Ocean Terminal")
  end


  def test_passengers_on_bus()
    assert_equal(0, @bus.passengers_on_bus())
  end


  def test_add_person()
    @bus.add_person(@person1)
    assert_equal(1, @bus.passengers.length)
  end

  def test_remove_person()
    @bus.add_person(@person1)
    @bus.add_person(@person2)
    @bus.remove_person(@person1)
    assert_equal(1, @bus.passengers.length)
  end

  def test_remove_all()
    @bus.add_person(@person1)
    @bus.add_person(@person2)
    @bus.add_person(@person3)
    @bus.remove_all()
    assert_equal(0, @bus.passengers.length)
  end

  def test_pick_up_from_stop()
    @bus.pick_up_from_stop(@stop1)
    @stop1.add_person_to_queue(@person1)
    @stop1.add_person_to_queue(@person2)
    @stop1.add_person_to_queue(@person3)
    assert_equal(3, @bus.passengers.length)
    assert_equal(0, @stop1.queue.length)

  end






end
