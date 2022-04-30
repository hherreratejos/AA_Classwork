require_relative "passenger.rb"

class Flight

    attr_reader :passengers

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def full?
        if @passengers.length == @capacity
            true
        else
            false
        end
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !full?
            @passengers << passenger
        end
    end

    def list_passengers 
        arr = []       
        (0...@passengers.length).each do |i|
            arr << @passengers[i].name
        end
        arr       
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end
end