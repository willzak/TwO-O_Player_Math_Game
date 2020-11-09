require "./question"
require "./player"

class Game

  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player2
  end
  
  def score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end
  
  def change_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def play
    # p1_lives = player1.lives
    # p2_lives = player2.lives

    until @player1.lives == 0 || @player2.lives == 0
      self.change_player
      question = Question.new()
      question.ask(@current_player)
      self.score
    end
    
    self.change_player
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end