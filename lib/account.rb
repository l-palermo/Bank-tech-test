require './lib/transaction'
require './lib/statement'
# class account
class Account
  def initialize(transaction = Transaction, statement = Statement)
    @balance = 0
    @history = []
    @statement = statement
    @transaction = transaction
  end

  # Option 1 uses balance as attribute
  def deposit(ammount)
    @balance += ammount
    @history << @transaction.new.credit(ammount, @balance)
  end

  def withdrawal(ammount)
    @balance -= ammount
    @history << @transaction.new.debit(ammount, @balance)
  end

  def statement
    print @statement.new.create(@history)
  end
end
