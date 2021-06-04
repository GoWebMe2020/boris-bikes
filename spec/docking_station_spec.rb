require "docking_station"

describe DockingStation do

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { double(:bike) }
    it 'has a default capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Dock at capacity'
    end
  end

  it {is_expected.to respond_to :release_bike}

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it "creates a bike object" do
      bike = double("bike", :working? => true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end
    

    it "raises an error when no bike available" do
      expect {subject.release_bike}.to raise_error('No bike available')
    end

    it "does not release a broken bike" do
      bike = double("bike", :working? => false)
      subject.dock(bike)
      expect(subject.release_bike).to eq('Bike is broken')
    end
  end

  describe '#dock' do
    it "docks a bike" do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises an error when dock is full' do
      station = DockingStation.new 40
      station.capacity.times { station.dock(double(:bike)) }
      expect {station.dock(double(:bike))}.to raise_error('Dock at capacity')
    end
  end
end

