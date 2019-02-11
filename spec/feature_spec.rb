describe Account do
  before(:each) do
    @account = Account.new
    @account.deposit(1000, Time.new(2019, 02, 11))
  end
  
  it 'allows the user to make a deposit' do
    expect(@account.show_balance).to eq("date || credit || debit || balance\n11/02/2019 || 1000.00 || || 1000.00\n")
  end

  it 'allows the user to withdraw funds' do
    @account.withdraw(500, Time.new(2019, 02, 11))
    expect(@account.show_balance).to eq("date || credit || debit || balance\n11/02/2019 || || 500.00 || 500.00\n11/02/2019 || 1000.00 || || 1000.00\n")
  end

  it 'correctly formats displays balance' do
    test_account = Account.new
    test_account.deposit(1000, Time.new(2012, 01, 10))
    test_account.deposit(2000, Time.new(2012, 01, 13))
    test_account.withdraw(500, Time.new(2012, 01, 14))
    expect(test_account.show_balance).to eq(
    "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n")
  end

end
