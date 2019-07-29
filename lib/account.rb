class Account
  attr_reader :balance, :debit

  def initialize
    @balance = 0
    @debit = 0
  end

  def deposit(arg)
    @balance += arg
  end

  def withdrawal(arg)
    @debit = arg
    @balance -= @debit
  end
end 