class Venue
    attr_reader :name, :capacity, :patrons, :number_patrons
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
        @number_patrons = 0
    end

    def new_person
        @number_patrons += 1
    end

    def add_patron(patron)
        @patrons << patron
        new_person
    end
    
    def yell_at_patrons
        patrons.each do |patron|
           patron.upcase!
        end
    end

    def over_capacity?
        return false if @number_patrons <= 4
        true
    end

    def kick_out
        until over_capacity? == false
            @number_patrons -= 1
            @patrons.pop
        end
    end
end
