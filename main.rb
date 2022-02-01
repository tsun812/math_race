require "./test_data.rb"
require "./player.rb"
data1 = Test.new()
player1 = Player.new(1)
player2 = Player.new(2)
current = player1

def get_results (player1, player2)
  puts "Player #{player1.id}: #{player1.lives}/3   Player #{player2.id}: #{player2.lives}/3"
end


data1.questions.each_with_index{
  |val, index|
  puts "Player #{current.id}: #{val}"
  input1 = gets.chomp
  if (input1.to_i == data1.answers[index])
    puts "you got it correct"
    get_results(player1, player2)
  else   
    puts "Player #{current.id}: Incorrect answer"
    current.lives= current.lives - 1
    get_results(player1, player2)
   if current.lives == 0
    current == player1 ? winner = player2 : winner = player1
    puts "Player #{winner.id} wins"
    puts "---- game over ----"
    break
   end
end
  current == player1 ? current = player2 : current = player1
}



