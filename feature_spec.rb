require './lib/docking_station'
station = DockingStation.new 40
@capacity = station.capacity
bike = Bike.new
20.times { station.dock(bike) } # should be ok
station.dock(bike) # should return an error
station.capacity = 15
puts station.capacity
station_2 = DockingStation.new 50
puts station_2.capacity
