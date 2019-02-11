class Transaction
  
  attr_reader(:value, :date, :debit, :balance)
  
  def initialize(value, date, debit, balance)
    @value = value
    @date = date
    @debit = debit
    @balance = balance
  end
end