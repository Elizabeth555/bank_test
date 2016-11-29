require 'statement.rb'

describe Statement do

  before(:each) do
    @statement = Statement.new
  end

  it "should add transaction to array of transactions" do
    trans = Transaction.new("20/03/2017", 10000)
    @statement.save_history(trans)
    expect(@statement.transactions.length).to eq(1)
  end

  it "should print statement" do
    expect(@statement.display).to eq([])
  end

end
