class BankTransaction
  attr_accessor :balance


  def initialize(balance)
    @balance = balance
  end
def prompt
  check_balance
  p "what would you like to do? (deposit, withdraw, check_balance)"
  operation = gets.chomp
  if(operation=="withdraw")
    withdraw
  elsif(operation=="deposit")
    deposit
  elsif(operation=="check_balance")
    check_balance
  end
  p "Are you done?"
  answer = gets.chomp
  if(answer=="yes")
    p "Thank you!"
  else prompt
  end
end
  def check_balance
    p "Your current balance is #{balance}"
  end

  def withdraw
    p "How much would you like to withdraw"
    amount = gets.chomp
    @balance -= amount.to_i
    p "your balance is #{balance}"
  end

  def deposit
    p "How much would you like to deposit?"
    amount = gets.chomp
    @balance+= amount.to_i
    p "Your balance is #{balance}"
  end
end

trans1 = BankTransaction.new(5000)
trans1.prompt
