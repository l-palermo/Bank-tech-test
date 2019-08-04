require './lib/transaction'
require './lib/statement'
# class account
class Account
  def initialize(transaction = Transaction, statement = Statement, _balance = Balance.new)
    @balance = 0
    # @balance = _balance
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

  # Otion 2 uses balance as injected class
  # def deposit(ammount)
  #   @history << @transaction.new.credit(arg, @balance.plus(arg))
  # end

  # def withdrawal(ammount)
  #   @history << @transaction.new.debit(arg, @balance.minus(arg))
  # end

  def statement
    print @statement.new.create(@history)
  end
end
