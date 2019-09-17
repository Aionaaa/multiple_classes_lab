require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')
require_relative('../Bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Adrian", 24)
    @person2 = Person.new("Ross", 21)
    @person3 = Person.new("Iona", 27)
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








end
