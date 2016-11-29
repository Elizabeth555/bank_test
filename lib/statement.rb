require_relative 'transaction.rb'

class Statement

  attr_reader :balance

def initialize
  @balance = 1000
end

def change_balance(transaction)
  @balance = @balance + transaction.amount
end





end
