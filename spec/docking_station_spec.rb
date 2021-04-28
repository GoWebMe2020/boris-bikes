require './lib/docking_station'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }
    it 'releases a working bike' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it { is_expected.to respond_to(:docking_bike).with(1).argument }
    it 'Docking a bike' do
        bike = Bike.new
        expect(subject.docking_bike(bike)).to eq bike
    end
end

