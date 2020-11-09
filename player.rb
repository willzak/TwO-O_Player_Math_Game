class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def self.lives
    puts "#{@lives} / 3"
  end
end