require_relative 'transaction.rb'
require_relative 'statement.rb'

class Account

  attr_reader :balance, :statement

  INITIAL_BALANCE = 1000

def initialize
  @balance = INITIAL_BALANCE
  @statement = Statement.new
end

def print_statement
  return statement.display
end

def deposit(date, amount)
  change_balance(amount)
  transaction = Transaction.new(date, amount, balance)
  statement.save_deposit(transaction)
end

def withdraw(date, amount)
  change_balance(amount)
  transaction = Transaction.new(date, -amount, balance)
  statement.save_withdrawl(transaction)
end

private

def change_balance(amount)
  @balance = @balance + amount
end

end
