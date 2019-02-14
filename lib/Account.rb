require './lib/transaction.rb'
require './lib/transactionhistory.rb'

class Account
  def initialize(balance = 0, transaction_history = TransactionHistory)
    @balance = balance
    @transaction_history = transaction_history.new
  end

  def deposit(value, date = Time.now, transaction = Transaction)
    @balance += value
    @transaction_history.add_transaction(
      transaction.new(date.strftime("%d/%m/%Y"), value, nil, @balance))
    puts "Thank you for depositing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def withdraw(value, date = Time.now, transaction = Transaction)
    @balance -= value
    @transaction_history.add_transaction(
      transaction.new(date.strftime("%d/%m/%Y"), nil, value, @balance))
    puts "Thank you for withdrawing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def show_balance
    balance_display = @transaction_history.print_history
    puts balance_display
  end
end
