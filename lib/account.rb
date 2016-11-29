require_relative 'transaction.rb'
require_relative 'statement.rb'

class Account

  attr_reader :balance, :statement

def initialize
  @balance = 1000
  @statement = Statement.new
end

def print_statement
  @statement.display
end

def deposit(date, amount)
  transaction = Transaction.new(date, amount)
  @statement.save_deposit(transaction)
  change_balance(transaction)
end

def withdraw(date, amount)
  create_negative_amount(amount)
  transaction = Transaction.new(date, @withdraw_amount)
  @statement.save_withdrawl(transaction)
  change_balance(transaction)
end

private

def change_balance(transaction)
  @balance = @balance + transaction.amount
end

def create_negative_amount(amount)
  @withdraw_amount = amount * -1
end




end
