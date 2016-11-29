require_relative 'transaction.rb'
require 'pp'

class Statement

  attr_reader :balance, :transactions

def initialize
  @balance = 1000
  @transactions = []
end

def save_history(transaction)
    @transactions  << {Date: transaction.date, Amount: transaction.amount, Balance: balance}
end

def display
 pp @transactions
end


end
