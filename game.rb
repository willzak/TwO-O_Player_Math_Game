class Game
  @@p1_score = 3
  @@p2_score = 3

  def play
    round = Round.new
    
    until @@p1_score == 0 || @@p2_score == 0
      round.change_player
      round.question
      round.score
    end

    round.end
  end

  class Round < Game
    @current_player = "Player 2"
  
    def question
      arg1 = rand(11)
      arg2 = rand(11)
      ans = arg1 + arg2
  
      puts "----- NEW TURN -----"
      puts "#{@current_player}: What does #{arg1} plus #{arg2} equal?"
      res = gets.chomp.to_i
  
      if res == ans
        puts "#{@current_player}: YES! You are correct."
      else
        puts "Seriously? No!"
        if @current_player == "Player 1"
          @@p1_score -= 1
        else
          @@p2_score -= 1
        end
      end
    end
  
    def score
      puts "P1: #{@@p1_score}/3 vs P2: #{@@p2_score}/3"
    end
  
    def change_player
      if @current_player == "Player 1"
        @current_player = "Player 2"
      else
        @current_player = "Player 1"
      end
    end
  
    def end
      if @@p1_score == 0
        puts "Player 2 wins with a score of #{@@p2_score}/3"
      else
        puts "Player 1 wins with a score of #{@@p1_score}/3"
      end
  
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
end