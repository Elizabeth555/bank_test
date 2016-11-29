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

 @transactions.reverse.each do |transaction|

   print transaction[:date].ljust(12); print transaction[:credit].to_s.center(12);
   print transaction[:debit].to_s.center(12); print transaction[:balance].to_s.rjust(12)
   puts
 end

end


end
