class Account
  def initialize(balance = 0)
    @balance = balance
    @transaction_history = []
  end

  def deposit(value, date = Time.now)
    @balance += value
    @transaction_history << Transaction.new(value, date.strftime("%d/%m/%Y"), debit = false, @balance)
    p "Thank you for depositing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def withdraw(value, date = Time.now)
    @balance -= value
    @transaction_history << Transaction.new(value, date.strftime("%d/%m/%Y"), debit = true, @balance)
    p "Thank you for withdrawing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def show_balance
    balance_display = "date || credit || debit || balance\n"
    @transaction_history.reverse.each do |transaction|
      if transaction.debit == false
        balance_display << "#{transaction.date} || #{transaction.value}.00 || || #{transaction.balance}.00\n"
      elsif transaction.debit == true
        balance_display << "#{transaction.date} || || #{transaction.value}.00 || #{transaction.balance}.00\n"
      end
    end
    p balance_display
  end

end