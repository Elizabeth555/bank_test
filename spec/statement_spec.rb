require 'statement.rb'

describe Statement do

  before(:each) do
    @statement = Statement.new
  end

  it "should add transaction to array of transactions" do
    trans = Transaction.new("20/03/2017", 10000)
    @statement.save_deposit(trans)
    expect(@statement.transactions.length).to eq(1)
  end

  it "should print statement" do
    trans = Transaction.new("20/03/2017", 1000)
    @statement.save_deposit(trans)
    trans1 = Transaction.new("20/03/2017", 1000)
    @statement.save_deposit(trans1)
    trans2 = Transaction.new("20/03/2017", 1000)
    @statement.save_withdrawl(trans2)
    trans3 = Transaction.new("20/03/2017", 1000)
    @statement.save_deposit(trans3)
    p @statement.display
  end

end
