class MathGame
  attr_accessor :player1, :player2
 
  def initialize
    @player1 = { name: "Player 1", lives: 3 }
    @player2 = { name: "Player 2", lives: 3 }
    @current_player = @player1
  end
 
  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
 
  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    [num1, num2, num1 + num2]
  end
 
  def prompt(player, question)
    puts "#{player[:name]}: What does #{question[0]} plus #{question[1]} equal?"
    print "> "
  end
 
  def check_answer(player, question, answer)
    if answer == question[2]
      puts "#{player[:name]}: Yes! You are correct."
    else
      puts "#{player[:name]}: Seriously? No!"
      player[:lives] -= 1
    end
  end
 
  def game_over?
    [@player1, @player2].any? { |player| player[:lives] == 0 }
  end
 
  def winner
    @player1[:lives] > 0 ? @player1 : @player2
  end
 
  def score
    "#{@player1[:name]}: #{@player1[:lives]}/3 vs #{@player2[:name]}: #{@player2[:lives]}/3"
  end
 
  def play
    until game_over?
      question = generate_question
      prompt(@current_player, question)
      answer = gets.chomp.to_i
      check_answer(@current_player, question, answer)
      puts score
      puts "------New Turn ------"
      switch_player
    end
    puts "#{winner[:name]} wins with a score of #{winner[:lives]}/3"
    puts "------ Game Over ------"
    puts "Good Bye!"
  end
end
 
game = MathGame.new
game.play