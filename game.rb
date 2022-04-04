class Game 
  attr_accessor :player_1, :player_2

  def initialize
    @turn = 1
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")    
  end

  def start 
    puts "#{@player_1.name} lives: #{@player_1.lives}, #{@player_2.name} lives: #{@player_2.lives}"
    question = Question.new(@turn)
    if !question.ask
      lose_life(@turn)
      puts "Oh no, you lost a life."
    else puts "Correct!"
    end
    if @player_1.lives == 0 || @player_2.lives == 0
      game_end
    else change_turn(@turn) 
    end
  end

  def change_turn(turn)
    if turn == 1
      @turn = 2
    else @turn = 1
    end
    start
  end

  def lose_life(turn)
    if turn == 1
      @player_1.lives -= 1
    else @player_2.lives -= 1
    end
  end

  def game_end
    puts "-----GAME OVER-----"
    if @player_1.lives > 0
    @winner = "Player 1"
    else @winner = "Player 2"
    end
    puts "The winner is #{@winner}!"
    puts "FINAL SCORE: #{@player_1.name} lives: #{@player_1.lives}, #{@player_2.name} lives: #{@player_2.lives}"
  end

end
