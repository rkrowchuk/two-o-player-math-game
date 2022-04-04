require "./player"

class Game 
  attr_accessor :player_1, :player_2

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")    
  end

  def to_s
    "Welcome! #{@player_1.name} goes first."
  end

  def start 
    puts self.to_s
    question_1 = Question.new
    puts question_1.ask
  end

end
