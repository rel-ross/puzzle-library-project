require 'pry'
require_relative './human.rb'
require_relative './puzzle'


tory = Human.new("Tory", "Denver")
arielle = Human.new("Arielle", "Denver")

colorado = Puzzle.new("Colorado by True South", 500, arielle, tory, true)
bugs = Puzzle.new("Bugs puzzle", 500, arielle, tory, false)
fishing_pond = Puzzle.new("Down by the Fishing Pond", 1000, arielle, arielle, true)
binding.pry