require './lib/balance'
# class Transaction
class Transaction
  def credit(ammount, balance)
    { time: time_format, credit: ammount, debit: '', balance: balance }
  end

  def debit(ammount, balance)
    { time: time_format, credit: '', debit: ammount, balance: balance }
  end

  # def credit(arg)
  #   "#{time_format} || #{arg}.00 || || #{@balance.plus(arg)}.00"
  # end

  # def debit(arg)
  #   "#{time_format} || || #{arg}.00 || #{@balance.minus(arg)}.00"
  # end

  private

  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end
