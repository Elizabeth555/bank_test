require 'transaction.rb'

describe Transaction do

  context "date and amount" do
    it "should print date and amount" do
      trans = Transaction.new("25/12/2016", 100000)
      expect(trans.date).to eq("25/12/2016")
      expect(trans.amount).to eq(100000)
    end
  end
  
end
