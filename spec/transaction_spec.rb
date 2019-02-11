describe Transaction do

  context 'can read the' do

    before(:each) do
      @transaction = Transaction.new(1000, "01/01/2001", true, 1000)
    end

    it 'date' do
      expect(@transaction.date).to eq "01/01/2001"
    end

    it 'value' do
      expect(@transaction.value).to eq 1000
    end

    it 'debit' do
      expect(@transaction.debit).to eq true
    end
  end
end
