require 'bank.rb'

describe Bank do

  before(:each) do
    @bank = Bank.new
  end

  context "print balance" do

      it "should print balance" do
        p @bank
        expect(@bank.balance).to eq(1000)
      end

  end

end
