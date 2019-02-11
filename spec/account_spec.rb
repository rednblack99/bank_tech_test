describe Account do

  before(:each) do
    @account = Account.new
  end

  it "can accept a user deposit with time-code" do
    expect(@account.deposit(1000, Time.new(2019,01,01))).to eq("Thank you for depositing £1000, on 01/01/2019")
  end

  it "can show the user's balance" do
    expect(@account.show_balance).to eq("date || credit || debit || balance\n")
  end

  it 'can accept withdrawing funds with time-code' do
    expect(@account.withdraw(500, Time.new(2019,01,01))).to eq("Thank you for withdrawing £500, on 01/01/2019")
  end

end