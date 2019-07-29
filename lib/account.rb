class Account
  attr_reader :balance, :debit, :credit

  def initialize
    @balance = 0
    @debit = 0
    @credit = 0
  end

  def deposit(arg)
    @credit = arg
    @balance += @credit
  end

  def withdrawal(arg)
    @debit = arg
    @balance -= @debit
  end


end 