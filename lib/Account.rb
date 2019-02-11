class Account
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(value)
    @balance += value
    p "Thank you for depositing £#{value}"
  end

  def show_balance
    p "Your balance is £#{@balance}"
  end

end