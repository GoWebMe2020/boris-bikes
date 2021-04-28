

class DockingStation
    attr_reader :bike
    #def initialize (bikes)
    #    @bikes = bikes    
    # end
    def release_bike
        Bike.new
    end
    def docking_bike(bike)
        @bike = bike
    end
    def bike
        @bike
    end
end

class Bike
    def working?
        true
    end
end