require 'plane'

class Airport
  DEFAULT_CAPACITY = 10
  
  attr_reader :capacity, :planes
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end
  
  def land(plane)
    fail 'Airport is full' if @planes.length >= @capacity
    @planes << plane
  end

  def take_off(plane)
  end
end