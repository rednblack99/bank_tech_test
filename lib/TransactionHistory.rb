class TransactionHistory
  
  attr_reader(:transaction_array)

  def initialize
    @transaction_array = []
  end

  def add_transaction(transaction)
    @transaction_array << transaction
  end

  def print_history
    balance_display = "date || credit || debit || balance\n"
    @transaction_array.reverse.each do |transaction|
      if transaction.debit == false
        balance_display << "#{transaction.date} || #{transaction.value}.00 || || #{transaction.balance}.00\n"
      elsif transaction.debit == true
        balance_display << "#{transaction.date} || || #{transaction.value}.00 || #{transaction.balance}.00\n"
      end
    end
    balance_display
  end

end
