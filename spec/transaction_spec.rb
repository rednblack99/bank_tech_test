require 'transaction.rb'

describe Transaction do

  context 'can read the' do

    before(:each) do
      @transaction = Transaction.new("01/01/2001", 1000, nil, 1000)
    end

    it 'date' do
      expect(@transaction.date).to eq "01/01/2001"
    end

    it 'credit' do
      expect(@transaction.credit).to eq 1000
    end

    it 'debit' do
      expect(@transaction.debit).to eq nil
    end

    it 'balance' do
      expect(@transaction.balance).to eq 1000
    end
  end

  it 'knows transaction is a deposit' do
    @transaction = Transaction.new("01/01/2001", nil, 1000, 1000)
    expect(@transaction.debit?).to eq "1000.00 "
  end

  it 'knows transaction is a withdrawal' do
    @transaction = Transaction.new("01/01/2001", 1000, nil, 1000)
    expect(@transaction.credit?).to eq "1000.00 "
  end
end
