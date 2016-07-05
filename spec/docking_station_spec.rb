require 'docking_station'

describe DockingStation do
  context 'responds to' do
  it 'release_bike' do
    #it { is_expected.to respond_to :release_bike }
    expect(subject).to respond_to :release_bike
  end

  it 'working?' do
    #it { is_expected.to respond_to :release_bike }
    expect(subject).to respond_to :working?
  end
end
end
