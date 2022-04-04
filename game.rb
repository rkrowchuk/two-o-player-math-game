class Game 
  attr_accessor :player_1, :player_2

  def initialize
    @turn = 1
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")    
  end

  def to_s
    "Welcome! #{@player_1.name} goes first."
  end

  def start 
    puts self.to_s
    question_1 = Question.new(@turn)
    puts question_1.ask
  end

  def change_turn
    if @turn == 1
      @turn = 2
    else @turn = 2
    end
    start
  end

  def lose_life(turn)
    if turn == 1
      @player_1.lives -= 1
    else @player_2.lives -= 2
    end
  end


end
