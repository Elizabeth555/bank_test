require_relative 'transaction.rb'
require 'pp'

class Statement

  LINE_WIDTH = 12

  attr_reader :balance, :transactions

def initialize
  @balance = 1000
  @transactions = []
end

def save_deposit(transaction)
    @transactions  << {date: transaction.date, credit: transaction.amount, deposit: " " ,balance: balance}
end

def save_withdrawl(transaction)
    @transactions  << {date: transaction.date, credit: " " , deposit: transaction.amount ,balance: balance}
end

def display
 puts "Date     || Credit     || Debit       || Balance      "
 puts "-------------------------------------------------------"

 @transactions.each do |transaction|
   puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}\n"
 end

end


end
