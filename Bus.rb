class Bus
  attr_reader :route_number, :destination, :passengers
  def initialize(input_route_number, input_destination)
    @route_number = input_route_number
    @destination = input_destination
    @passengers = []
  end

  def passengers_on_bus()
    return @passengers.length
  end

  def add_person(person)
    @passengers.push(person)
  end

  def remove_person(person)
    @passengers.delete(person)
  end

  def remove_all()
    index = @passengers.length
    while index != 0
      @passengers.pop
      index -= 1
    end

  end



end
