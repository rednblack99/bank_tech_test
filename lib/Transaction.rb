class Transaction
  
  attr_reader(:date, :credit, :debit, :balance)
  
  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def credit?
    format(@credit)
  end

  def debit?
    format(@debit) 
  end

  private

  def format(amount)
    amount != nil ? amount.to_s + ".00 " : nil # look up strformat
  end
end
