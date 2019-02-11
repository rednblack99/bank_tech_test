describe Account do
  it 'allows the user to make a deposit' do
    account = Account.new
    account.deposit(1000)
    expect(account.show_balance).to eq("Your balance is £1000")
  end
end