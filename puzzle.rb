class Puzzle 
    attr_reader :name, :size, :original_owner
    attr_accessor :available, :currently_with
    @@all = []
    def initialize (name, size, original_owner, currently_with, available)
        @name=name
        @size=size
        @original_owner=original_owner
        @currently_with = currently_with
        @available=available
        @@all << self
     end

     def self.all
        @@all
     end

     def self.full_list
        full_list = []
        @@all.map do |puzzle|
            full_list << puzzle.name
            full_list << puzzle.size
        end
        full_list
     end


     def currently_with_name
        @currently_with.name
     end

     def name_and_size
        "#{@name}, #{@size} pieces"
     end

     def self.where_are_all_the_puzzles
        @@all.map do |puzzle|
            "#{puzzle.name_and_size}, is currently with #{puzzle.currently_with_name}"
        end
     end

end