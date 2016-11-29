class Statement

  LINE_WIDTH = 12

  attr_reader :transactions

def initialize
  @transactions = []
end

def save_deposit(transaction)
    @transactions  << {date: transaction.date, credit: transaction.amount, balance: transaction.balance}
end

def save_withdrawl(transaction)
    @transactions  << {date: transaction.date, debit: transaction.amount , balance: transaction.balance}
end

def display
 puts "Date     || Credit     || Debit      || Balance      "
 puts "-" * 50
 seperate_transactions
end

def seperate_transactions
  @transactions.reverse.each do |transaction|
    print transaction[:date].ljust(LINE_WIDTH); print transaction[:credit].to_s.center(LINE_WIDTH);
    print transaction[:debit].to_s.center(LINE_WIDTH); print transaction[:balance].to_s.rjust(LINE_WIDTH)
    puts
  end
end

end
