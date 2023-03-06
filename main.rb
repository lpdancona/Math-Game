# Player class to keep track of each player's score and lives
class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 3
    @lives = 3
  end
end