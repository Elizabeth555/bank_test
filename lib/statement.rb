require_relative 'transaction.rb'

class Statement

  attr_reader :balance, :transactions

def initialize
  @balance = 1000
  @transactions = []
end

def change_balance(transaction)
  @balance = @balance + transaction.amount
  @transactions  << {Date: transaction.date, Amount: transaction.amount, Balance: @balance}
end

def print_statement


end



end
