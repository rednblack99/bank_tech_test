require 'TransactionHistory.rb'

describe TransactionHistory do

  let(:transaction_double) { double :transaction_double }

  before {
    allow(transaction_double).to receive(:date).and_return("01/01/2001")
    allow(transaction_double).to receive(:credit?).and_return(nil)
    allow(transaction_double).to receive(:debit?).and_return("1000.00 ")
    allow(transaction_double).to receive(:balance).and_return("1000")  
  }
  
  before(:each) do
    @transaction_double = "hello, world"
    @transaction_history = TransactionHistory.new
  end

  it 'can store a transaction object' do
    @transaction_history.add_transaction(@transaction_double)
    expect(@transaction_history.transaction_array).to eq(["hello, world"])
  end

  it 'can prepare the transaction history for printing' do
    @transaction_history.add_transaction(transaction_double)
    expect(@transaction_history.print_history).to eq("date || credit || debit || balance\n01/01/2001 || || 1000.00 || 1000.00\n")
  end

end
