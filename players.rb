class Player
    attr_accessor :name
    attr_reader :lives

    def initialize(name)
        @name = name
        @lives = 3
    end

    def decrementLife()
        @lives = @lives - 1
    end
end
