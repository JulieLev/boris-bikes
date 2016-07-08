require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "Sorry, there are no bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if full?
    @bikes << bike
    bike
  end

private
  attr_reader :bikes

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end

end #end class
