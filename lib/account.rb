# class account
require 'transaction'

class Account
  attr_reader :_statement, :balance#, :debit, :credit, :history

  def initialize(transaction = Transaction.new)
    @history = []
    @balance
    @transaction = transaction
  end

  def deposit(arg)
    @history << @transaction.credit(arg)
  end

  def withdrawal(arg)
    @history << @transaction.debit(arg)
  end

  def statement
    @_statement = 'date || credit || debit || balance' + @history.join
    puts @_statement
  end

end
