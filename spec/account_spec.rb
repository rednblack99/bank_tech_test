describe Account do

  before(:each) do
    @account = Account.new
  end

  it "can accept a user deposit with time-code" do
    expect { @account.deposit(1000, Time.new(2019, 01, 01)) }.to output("Thank you for depositing £1000, on 01/01/2019\n").to_stdout
  end

  it "can show the user's balance" do
    expect { @account.show_balance }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'can accept withdrawing funds with time-code' do
    expect { @account.withdraw(500, Time.new(2019, 01, 01)) }.to output("Thank you for withdrawing £500, on 01/01/2019\n").to_stdout
  end
end
