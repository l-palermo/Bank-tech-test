require './lib/balance'
# class Transaction
class Transaction
  def credit(ammount, balance)
    { time: time_format, credit: ammount, debit: '', balance: balance }
  end

  def debit(ammount, balance)
    { time: time_format, credit: '', debit: ammount, balance: balance }
  end

  private

  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end
