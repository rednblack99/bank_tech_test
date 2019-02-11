describe TransactionHistory do

  before(:each) do
    @transaction = Transaction.new(1000, "01/01/2001", true, 1000)
    @transaction_double = "hello, world"
    @transaction_history = TransactionHistory.new
  end

  it 'can store a transaction object' do
    @transaction_history.add_transaction(@transaction_double)
    expect(@transaction_history.transaction_array).to eq(["hello, world"])
  end

  it 'can prepare the transaction history for printing' do
    @transaction_history.add_transaction(@transaction)
    expect(@transaction_history.print_history).to eq("date || credit || debit || balance\n01/01/2001 || || 1000.00 || 1000.00\n")
  end
end
