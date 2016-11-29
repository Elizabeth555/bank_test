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
      @account.deposit("25/12/2016", 1000)
      expect(@account.balance).to eq(2000)
    end
    it "should update with negative balance from transaction amount" do
      @account.withdraw("01/01/2017", 1000)
      expect(@account.balance).to eq(0)
    end
  end

  context "should print balance" do
    it "should display balance" do
      @account.deposit("25/12/2016", 1000)
      expect(@account.print_statement).to include("2000")
    end
  end
end
