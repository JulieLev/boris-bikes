require './lib/docking_station'
station = DockingStation.new(25)
@capacity = station.capacity
bike = Bike.new
20.times { station.dock(bike) } # should be ok
station.dock(bike) # should return an error
