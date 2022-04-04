class Question 
  def initialize
    @turn = 1
  end

  def ask
    puts "What is 1 + 1?"
    print "> "
    answer = $stdin.gets.chomp
  end 


end


