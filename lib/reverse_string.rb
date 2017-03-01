class Reverse
  def initialize()
  end

def prompt
  p "enter the string"
  str = gets.chomp
  i = 0
  revArr= Array.new()
  while i<str.length
    revArr.unshift(str[i])
    i+=1
  end
  p revArr.join()
end
end

reverseItem = Reverse.new
reverseItem.prompt
