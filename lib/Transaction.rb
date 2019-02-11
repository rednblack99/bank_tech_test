class Transaction
  
  attr_reader(:value, :date, :debit)
  
  def initialize(value, date, debit)
    @value = value
    @date = date
    @debit = debit
  end
end