# class account
class Account
  attr_reader :_statement#, :balance, :debit, :credit, :history

  def initialize()
    @balance = 0
    @debit = 0
    @credit = 0
    @history = []
  end

  def deposit(arg)
    @history << "\n#{time_format} || #{@credit = arg}.00 || || #{@balance += @credit}.00"
    return 
  end

  def withdrawal(arg)
    @history << "\n#{time_format} || || #{@debit = arg}.00 || #{@balance -= @debit}.00"
    return
  end

  def statement
    @_statement = 'date || credit || debit || balance' + @history.join
    puts @_statement
  end

  private

  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end
