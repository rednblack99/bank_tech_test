class Account
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(value, date = Time.now)
    @balance += value
    format_date = date.strftime("%d/%m/%Y")
    p "Thank you for depositing £#{value}, on #{format_date}"
  end

  def show_balance
    p "Your balance is £#{@balance}"
  end

  def withdraw(value, date = Time.now)
    @balance -= value
    format_date = date.strftime("%d/%m/%Y")
    p "Thank you for withdrawing £#{value}, on #{format_date}"
  end

end