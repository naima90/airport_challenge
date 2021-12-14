require 'plane'

class Airport
  DEFAULT_CAPACITY = 10
  
  attr_reader :capacity, :planes
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end
  
  def land(plane)
    raise 'can not land as weather is stormy' if stormy?
    raise 'Airport is full' if @planes.length >= @capacity
    @planes << plane
  end

  def take_off(plane)
    raise 'can not take off as weather is stormy' if stormy?
  end

  def stormy?
    rand(1..6) > 4
  end
end