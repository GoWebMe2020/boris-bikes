class Van
    attr_reader :broken_bikes
    def collect(docking_station)
        @broken_bikes = docking_station.bikes.select { |bike| !bike.working? }
    end
end