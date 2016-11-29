require_relative 'transaction.rb'

class Statement

  attr_reader :balance, :transactions

def initialize
  @balance = 1000
  @transactions = []
end

def change_balance(transaction)
  @transactions << transaction
  @balance = @balance + transaction.amount

end

def print_statement

end



end
