require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it  { is_expected.to respond_to(:capacity) }

  #describe 'when new' do
  #  DockingStation.new capacity
  #  it 'can be assigned a capacity' do
  #    expect(subject.capacity).to eq capacity
  #  end
  #end # end describe when new

  #it 'has a default capacity' do
  #  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  #end




  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bikes).to eq [bike]
  end

  describe '#release_bike' do

    it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    end

    it 'raises an error when station is new' do
      expect { subject.release_bike }.to raise_error ("Sorry, there are no bikes")
    end

  end # end describe release bike

  describe '#dock' do

    bike = Bike.new

    it 'docks something' do
      expect(subject.dock(bike)).to eq bike
    end

    it 'raises an error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error("Sorry, Docking station full")
    end

  end # end describe dock

end # end describe DockingStation
