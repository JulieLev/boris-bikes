require './lib/docking_station'
station = DockingStation.new capacity
@capacity = station.capacity
#bike = Bike.new
#20.times { station.dock(bike) } # should be ok
#station.dock(bike) # should return an error
