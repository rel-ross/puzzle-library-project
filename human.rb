class Human
    attr_reader :name, :location
    @@all = []
    def initialize name, location
        @name=name
        @location=location
        @@all << self
    end

    def self.all
        @@all
    end

    #all of the puzzles at this person's home
    def puzzles
        Puzzle.all.select do |puzzle|
            puzzle.currently_with == self
        end     
    end
#all puzzles this person has that are currently available to be given away
    def puzzles_available
        available = puzzles.select do |puzzle|
            puzzle.available == true
        end
    end

    #give puzzle away but it can only be a puzzle they have
    def give_puzzle puzzle, human
        this_puzzle = puzzles_available.find do |puzzle_available|
            puzzle_available == puzzle
        end
        this_puzzle.currently_with = human
    end
end