require 'van'

describe Van do
    describe '#collect' do
        it 'takes broken bikes from a dock' do
            bike = double('bike', :working? => true)
            bike2 = double('bike2', :working? => false)
            bike3 = double('bike3', :working? => true)
            bike4 = double('bike4', :working? => true)
            bike5 = double('bike5', :working? => false)
            station = double('station', :bikes => [bike, bike2, bike3, bike4, bike5])
            expect(subject.collect(station)).to eq([bike2, bike5])
        end
    end
end