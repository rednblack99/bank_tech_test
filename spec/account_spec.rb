describe Account do

  before(:each) do
    @account = Account.new
  end

  it "can accept a user deposit" do
    expect(@account.deposit(1000)).to eq("Thank you for depositing £1000")
  end

  it "can show the user's balance" do
    expect(@account.show_balance).to eq("Your balance is £0")
  end

end