require_relative 'transaction.rb'
require_relative 'statement.rb'

class Account

  attr_reader :balance, :statement

def initialize
  @balance = 1000
  @statement = Statement.new
end

def change_balance(transaction)
  @balance = @balance + transaction.amount
  @statement.save_history(transaction)
end

def print_statement
  @statement.display
end




end
