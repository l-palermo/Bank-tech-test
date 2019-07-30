require './lib/transaction'
require './lib/statement'
# class account
class Account
  def initialize(transaction = Transaction.new, statement = Statement.new)
    @statement = statement
    @transaction = transaction
  end

  def deposit(arg)
    @statement.history << @transaction.credit(arg)
  end

  def withdrawal(arg)
    @statement.history << @transaction.debit(arg)
  end

  def statement
    @statement.create
  end
end
