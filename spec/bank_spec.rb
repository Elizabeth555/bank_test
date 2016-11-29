require 'statement.rb'

describe Statement do

  before(:each) do
    @statement = Statement.new
  end

  context "print balance" do

      it "should print balance" do
        expect(@statement.balance).to eq(1000)
      end

  end

  context "interacting with transaction" do

    it "should update positive balance from transaction amount" do
      trans = Transaction.new("25/12/2016", 1000)
      @statement.change_balance(trans)
      expect(@statement.balance).to eq(2000)
    end

    it "should update with negative balance from transaction amount" do
      trans = Transaction.new("1/01/2017", -1000)
      @statement.change_balance(trans)
      expect(@statement.balance).to eq(0)
    end

  end



end
