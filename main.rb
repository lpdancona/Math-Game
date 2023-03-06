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

# method to check if a player has lost all their lives
def game_over?(player)
  if player.lives == 0
    puts "#{player.name} is out of lives! Game over."
    return true
  else
    return false
  end
end

# method to switch turns between the players
def switch_players(player1, player2)
  temp = player1
  player1 = player2
  player2 = temp
  return player1, player2
end

# Start the game loop
puts "Welcome to the 2-Player Math Game!"

current_player = player1

loop do
  # new question and prompt the current player to answer
  answer = generate_question
  print "#{current_player.name}, please enter your answer: "
  player_answer = gets.chomp.to_i

  # Check if the answer is correct and update the player's score/lives accordingly
  if player_answer == answer
    puts "YES! you are correct."
    current_player.score = 3
  else
    puts "Seriously? No!"
    current_player.lives -= 1
  end

  # Check if the game is over
  if game_over?(current_player)
    break
  end

  # Switch to the other player's turn
  player1, player2 = switch_players(player1, player2)
  current_player = (current_player == player1) ? player2 : player1

  # Display each player's score and lives
  puts "Score: #{player1.name} - #{player1.lives} / #{player1.score} lives    #{player2.name} - #{player2.lives} / #{player2.score} lives\n\n"
end