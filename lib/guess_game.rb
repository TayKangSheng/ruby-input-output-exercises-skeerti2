class Guessgame

def prompt
  mynum = 60
  gameStart = true
  count =0
  p "Guess a number between 1 and 100"
  while gameStart
    num = gets.chomp.to_i
    count +=1
  if num > mynum
    p "The number is lower than #{num}"
  elsif num < mynum
    p "The number is greater than #{num}"
  elsif num == mynum

    p "You got it in #{count} tries"
    gameStart = false

  end
end

end
end

mygame = Guessgame.new
mygame.prompt
