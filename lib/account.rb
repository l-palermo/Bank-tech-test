class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(arg)
    @balance += arg
  end

  def withdrawal(arg)
    @balance -= arg
  end
end 