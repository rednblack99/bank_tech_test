class TransactionHistory
  BALANCE_DISPLAY = "date || credit || debit || balance"
  attr_reader(:transaction_array)

  def initialize(transaction_array = [])
    @transaction_array = transaction_array
  end

  def add_transaction(transaction)
    @transaction_array << transaction
  end

  def print_history
    @transaction_array.reverse.map do |transaction|
      "#{transaction.date} || #{transaction.credit?}|| #{transaction.debit?}|| #{transaction.balance}.00"
    end.unshift(BALANCE_DISPLAY).join("\n")
  end
end
