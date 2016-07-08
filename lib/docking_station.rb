require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes
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
  def empty?
    @bikes.empty?
  end

private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

end #end class
