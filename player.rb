class Player
  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def self.lives
    puts "#{@lives} / 3"
  end

  def self.name
    puts "#{@name}"
  end
end