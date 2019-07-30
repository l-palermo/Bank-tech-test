require './lib/balance'

class Transaction
  attr_reader :balance

  def initialize(balance = Balance.new)
    @balance = balance
  end

  def credit(arg)
    "#{time_format} || #{arg}.00 || || #{@balance.plus(arg)}.00"
  end

  def debit(arg)
    "#{time_format} || || #{arg}.00 || #{@balance.minus(arg)}.00"
  end

  private

  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end