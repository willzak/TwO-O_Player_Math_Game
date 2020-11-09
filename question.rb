class Question

  def ask(player)
    arg1 = rand(11)
    arg2 = rand(11)
    ans = arg1 + arg2

    puts "----- NEW TURN -----"
    puts "#{player.name}: What does #{arg1} plus #{arg2} equal?"
    res = gets.chomp.to_i

    if res == ans
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_life
    end
  end
end