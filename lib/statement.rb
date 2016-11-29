require_relative 'transaction.rb'
require 'pp'

class Statement

  LINE_WIDTH = 12

  attr_reader :balance, :transactions

def initialize
  @balance = 1000
  @transactions = []
end

def save_history(transaction)
    @transactions  << {date: transaction.date, amount: transaction.amount, balance: balance}
end

def display
 puts "Date     || Amount     || Balance      "
 puts "----------------------------------------"

 @transactions.each do |transaction|
   puts "#{transaction[:date]} || #{transaction[:amount]} || #{transaction[:balance]}\n"
 end

end


end
