require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  attr_reader :capacity


  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "Dock at capacity" if dock_full?
    bikes << bike
  end

  def release_bike
    fail "No bike available" if dock_empty?
    bike = bikes.pop
    bike.working? ? bike : "Bike is broken"
  end

  private

  def dock_full?
    bikes.count >= capacity
  end

  def dock_empty?
    bikes.empty?
  end
end