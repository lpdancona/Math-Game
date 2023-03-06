# Player class to keep track of each player's score and lives
class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 3
    @lives = 3
  end
end
# method to generate a new math question
def generate_question
  num1 = rand(1..20)
  num2 = rand(1..20)
  puts "What is #{num1} + #{num2}?"
  return num1 + num2
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")