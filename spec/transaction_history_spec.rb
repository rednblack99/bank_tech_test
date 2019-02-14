require 'TransactionHistory.rb'

describe TransactionHistory do

  let(:transaction_double) { double :transaction_double, date: "01/01/2001", credit?: nil, debit?: "1000.00 ", balance: "1000" }
  subject(:transaction_history) { described_class.new }
    
  before(:each) do
    transaction_history.add_transaction(transaction_double)
  end

  it 'can store a transaction object' do
    expect(transaction_history.transaction_array).to eq([transaction_double])
  end

  it 'can prepare the transaction history for printing' do
    expect(transaction_history.print_history).to eq("date || credit || debit || balance\n01/01/2001 || || 1000.00 || 1000.00")
  end

end
