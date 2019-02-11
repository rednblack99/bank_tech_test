describe Account do
  before(:each) do
    @account = Account.new
    @account.deposit(1000)
  end
  
  it 'allows the user to make a deposit' do
    expect(@account.show_balance).to eq("Your balance is £1000")
  end

  it 'allows the user to withdraw funds' do
    @account.withdraw(500)
    expect(@account.show_balance).to eq("Your balance is £500")
  end
end