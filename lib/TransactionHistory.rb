class TransactionHistory
  
  attr_reader(:transaction_array)

  def initialize(transaction_array = [])
    @transaction_array = transaction_array
  end

  def add_transaction(transaction)
    @transaction_array << transaction
  end

  def print_history
    balance_display = "date || credit || debit || balance\n"
    @transaction_array.reverse.each do |transaction|
      balance_display << "#{transaction.date} || #{transaction.credit?}|| #{transaction.debit?}|| #{transaction.balance}.00\n"
    end
    balance_display
  end
end
