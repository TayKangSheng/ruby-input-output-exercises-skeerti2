class Calculator
  attr_accessor :num1, :num2

  def prompt
    p "What calculation would you like to do? (add, sub, mult, div)"
    operation = gets.chomp
    p  "What is number 1?"
    num1 = gets.chomp.to_i
    p "What is number 2?"
    num2 = gets.chomp.to_i
    if(operation=="add")
      p num1 + num2
    elsif(operation=="sub")
      p num1-num2
  elsif(operation=="mult")
    p num1*num2
  elsif(operation=="div")
    p num1/num2
  end
end
end



mycalc = Calculator.new
mycalc.prompt
