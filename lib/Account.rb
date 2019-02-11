require 'Transaction.rb'

class Account
  def initialize(balance = 0)
    @balance = balance
    @transaction_history = []
  end

  def deposit(value, date = Time.now)
    @balance += value
    @transaction_history << Transaction.new(value, date.strftime("%d/%m/%Y"), debit = true)
    p "Thank you for depositing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

  def show_balance
    p "Your balance is £#{@balance}"
  end

  def withdraw(value, date = Time.now)
    @balance -= value
    @transaction_history << Transaction.new(value, date.strftime("%d/%m/%Y"), debit = false)
    p "Thank you for withdrawing £#{value}, on #{date.strftime("%d/%m/%Y")}"
  end

end