class Viewer

    attr_reader :name
    attr_accessor :location, :cable_provider

    def initialize(name, location, cable_provider="none")
        @name = name
        @location = location
        @cable_provider = cable_provider
    end

    
end