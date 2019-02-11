class Account
  def initialize(balance = 0)
    @balance = balance
    @transaction_history = TransactionHistory.new
  end

  def deposit(value, date = Time.now)
    @balance += value
    @transaction_history.add_transaction(
      Transaction.new(value, date.strftime("%d/%m/%Y"), false, @balance))
    p "Thank you for depositing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def withdraw(value, date = Time.now)
    @balance -= value
    @transaction_history.add_transaction(
      Transaction.new(value, date.strftime("%d/%m/%Y"), true, @balance))
    p "Thank you for withdrawing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def show_balance
    balance_display = @transaction_history.print_history
    puts balance_display
  end

end
