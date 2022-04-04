class Question 
  attr_accessor :turn, :num1, :num2

  def initialize(turn)
    @turn = turn
  end

  def ask
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    puts "------NEW TURN------"
    puts "Player #{@turn}: What is #{num1} + #{num2}?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    check_answer(@num1, @num2, answer)
  end 

  def check_answer(num1, num2, answer)
    if answer == (num1 + num2)
      return true
    else return false
    end 
  end

end


