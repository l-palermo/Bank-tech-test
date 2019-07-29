require 'account'

RSpec.describe Account do
  subject(:account) { Account.new }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'has a balance attaribute eq 0' do
    expect(account.balance).to eq(0)
  end

  it 'stores money when a deposit is made' do
    account.deposit(20)
    expect(account.balance).to eq(20)
  end

  it 'withdrawal the required ammount' do
    account.withdrawal(20)
    expect(account.balance).to eq(-20)
  end

  it 'has a debit property that keep note of the taken money' do
    account.withdrawal(20)
    expect(account.debit).to eq(20)
  end

  it 'has a credit property that keep note of the added money' do
    account.deposit(20)
    expect(account.credit).to eq(20)
  end

  it 'deposit record the transaction' do
    account.deposit(20)
    expect(account.history).to eq(["\n#{time} || 20.00 || || 20.00"])
  end

  it 'credit record the transaction' do
    account.withdrawal(20)
    expect(account.history).to eq(["\n#{time} || || 20.00 || -20.00"])
  end

  it 'print the statement with the correct format' do
    account.deposit(20)
    account.statement
    expect(account._statement).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 20.00")
  end
end
