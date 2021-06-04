class Garage
    attr_reader :broken_bikes

    def for_repair(van)
        @broken_bikes = van.broken_bikes
    end

    def repair_bikes
        broken_bikes.map { |bike| fix(bike) }
    end

    def fix
        bike.broken = false
    end

end