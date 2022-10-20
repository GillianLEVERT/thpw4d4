#Class player with name & symbol (X or O)

class Player
    attr_accessor :name, :value, :score

    def initialize(name, value)
        @name = name 
        @value = value #Dans ce cas, ca sera X ou O
        @score = 0
    end
end