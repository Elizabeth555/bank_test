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
    @transactions  << {date: transaction.date, credit: transaction.amount,balance: balance}
end

def save_withdrawl(transaction)
    @transactions  << {date: transaction.date, debit: transaction.amount ,balance: balance}
end

def display
 puts "Date     || Credit     || Debit      || Balance      "
 puts "-------------------------------------------------------"

 @transactions.each do |transaction|
   date = transaction[:date]
   credit = transaction[:credit].to_s
   debit = transaction[:debit].to_s
   balance = transaction[:balance].to_s

   print date.ljust(12)
   print credit.center(12)
   print debit.center(12)
   print balance.rjust(12)
   puts
 end

end


end
