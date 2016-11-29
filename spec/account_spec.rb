require 'account.rb'

describe Account do

  before(:each) do
    @account = Account.new
  end

  context "holds balance" do
    it "should print balance" do
      expect(@account.balance).to eq(1000)
    end

  end
    context "interacting with transaction" do

      it "should update positive balance from transaction amount" do
        trans = Transaction.new("25/12/2016", 1000)
        @account.change_balance(trans)
        expect(@account.balance).to eq(2000)
      end

      it "should update with negative balance from transaction amount" do
        trans = Transaction.new("1/01/2017", -1000)
        @account.change_balance(trans)
        expect(@account.balance).to eq(0)
      end

    end

end
