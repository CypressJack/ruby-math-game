class Question
  attr_accessor :player, :int1, :int2, :answer
  
  def initialize(player, int1, int2)
    self.player = player
    self.int1 = int1
    self.int2 = int2
    self.answer = int1 + int2
  end

  def ask
    puts "Player #{self.player.name}: What does #{self.int1} plus #{self.int2} equal?"
    answer = gets.chomp.to_i
    if answer == self.answer
      puts "Player #{self.player.name}: YES! You are correct."
    else
      puts "Player #{self.player.name}: Seriously? No!"
      player.score_minus
    end
  end
end