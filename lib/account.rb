# class account
require './lib/transaction'

class Account

  def initialize(transaction = Transaction.new)
    @history = []
    @transaction = transaction
  end

  def deposit(arg)
    @history << @transaction.credit(arg)
  end

  def withdrawal(arg)
    @history << @transaction.debit(arg)
  end

  def statement
    "date || credit || debit || balance\n" + @history.join("\n")
  end

end
