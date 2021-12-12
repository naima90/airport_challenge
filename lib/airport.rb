require 'plane'
class Airport
  attr_reader = :plane
  def initialize 
    @capacity = 20
    @planes = []
  end
  def land(plane)
    raise 'airport is full' if @planes.length >= @capacity
    @planes << plane
  end

  def take_off(plane)
  end
end