class Transaction
  
  attr_reader(:date, :credit, :debit, :balance)
  
  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def credit?
    @credit != nil ? @credit.to_s + ".00 " : nil
  end

  def debit?
    @debit != nil ? @debit.to_s + ".00 " : nil
  end

end
