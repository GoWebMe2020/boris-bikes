class DockingStation
    attr_reader :bike
    def docking_bike(bike)
        @bike = bike
    end
    def bike
        @bike
    end
    def release_bike
        fail 'No bike' unless @bike
        @bike
    end
end

class Bike
    def working?
        true
    end
end