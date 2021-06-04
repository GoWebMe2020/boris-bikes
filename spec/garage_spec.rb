require 'garage'

describe Garage do
    describe '#for_repair' do
        it 'takes broken bikes from van' do
            bike = double('bike', :working? => false)
            bike2 = double('bike2', :working? => false)
            bike3 = double('bike3', :working? => false)
            bike4 = double('bike4', :working? => false)
            bike5 = double('bike5', :working? => false)
            van = double('van', :broken_bikes => [bike, bike2, bike3, bike4, bike5])

            expect(subject.for_repair(van)).to eq([bike, bike2, bike3, bike4, bike5])
        end
    end
    
    describe '#repair_bikes' do
        it 'repairs broken bikes delivered by van' do
            bike = double('bike', :working? => false)
            bike2 = double('bike2', :working? => false)
            bike3 = double('bike3', :working? => false)
            bike4 = double('bike4', :working? => false)
            bike5 = double('bike5', :working? => false)
            van = double('van', :broken_bikes => [bike, bike2, bike3, bike4, bike5])
            subject.for_repair(van)
            # expect(subject.repair_bikes).to eq
        end
    end
end