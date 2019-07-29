class Account
  attr_reader :balance, :debit, :credit, :history

  def initialize
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
    @debit = arg
    @balance -= @debit
  end

  private
  def time_format
    Time.now.strftime('%d/%m/%y')
  end
end 