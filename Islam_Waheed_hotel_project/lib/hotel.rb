require_relative "room"
#FAILED this class
class Hotel
    def initialize(name,capacities)
    @name = name

    @rooms = {}

    capacities.each { |name,cap| # ???? didn't get this loop alone
        @rooms[name] = Room.new(cap) 
    }
    end 


    def name
        name_capitalized = @name.split(" ")
        name_cap = []
        name_capitalized.each do |ele|  
            name_cap << ele.capitalize
        end
            return name_cap.join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(name)
        
        rooms.each_key { |k| 
           if k == name 
            return true
           end
        }
        false
    end

    def check_in(person,room)
        if room_exists?(room) 
            if @rooms[room].add_occupant(room) 
                print "check in successful"
            else
                print "sorry, room is full"
            end
        else      
            print "sorry, room does not exist" 
        end
    end

    def has_vacancy?
        rooms.values.any? {|room| room.available_space > 0}
    end

    def list_rooms
        @rooms.each do |name, room|
            puts "#{name} , #{room.available_space}"
        end

    end

end
