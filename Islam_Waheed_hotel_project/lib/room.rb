class Room
    # room = Room.new(3) 
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.length < @capacity
            false
        elsif @occupants.length == @capacity
            true
        end
    end

    def available_space
        return @capacity - occupants.length 
    end

    def add_occupant(name)
       if self.full? == false
            @occupants << name
            true
        else
            false
        end    
    end

    

end
