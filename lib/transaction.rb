class Transaction

  def initialize
    @balance = 0
  end

  def credit(arg)
    "\n#{time_format} || #{@credit = arg}.00 || || #{@balance += @credit}.00"
  end

  def debit(arg)
    "\n#{time_format} || || #{@debit = arg}.00 || #{@balance -= @debit}.00"
  end

  private

  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end