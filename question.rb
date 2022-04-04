class Question 
  attr_accessor :turn, :num1, :num2

  def initialize
    @turn = 1
  end

  def ask
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    puts "------NEW TURN------"
    puts "What is #{num1} + #{num2}?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    if answer == (num1 + num2)
      puts "Correct!"
    else puts "Sorry, you're wrong. You lost a life."
    end
  end 


end


