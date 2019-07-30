require 'account'

RSpec.describe Account do
  subject(:transaction) { double 'Transaction' }
  subject(:statement) { double 'Statement' }
  subject(:account) { Account.new(transaction, statement) }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'deposit record the transaction' do
    allow(transaction).to receive(:credit).with(20) { "#{time} || 20.00 || || 20.00" }
    allow(statement).to receive(:history) { [] }
    expect(account.deposit(20)).to eq(["#{time} || 20.00 || || 20.00"])
  end

  it 'credit record the transaction' do
    allow(transaction).to receive(:debit).with(20) { "#{time} || || 20.00 || -20.00" }
    allow(statement).to receive(:history) { [] }
    expect(account.withdrawal(20)).to eq(["#{time} || || 20.00 || -20.00"])
  end

  it 'print the statement with the correct format' do
    allow(transaction).to receive(:credit).with(20) { "#{time} || 20.00 || || 20.00" }
    allow(statement).to receive(:history) { [] }
    account.deposit(20)
    allow(statement).to receive(:create) { "date || credit || debit || balance\n#{time} || 20.00 || || 20.00" }
    expect(account.statement).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 20.00")
  end
end
