require 'account'

RSpec.describe Account do
  subject(:transaction) { double "Transaction" }
  subject(:account) { Account.new(transaction) }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'deposit record the transaction' do
    allow(transaction).to receive(:credit).with(20) { "#{time} || 20.00 || || 20.00" }
    expect(account.deposit(20)).to eq(["#{time} || 20.00 || || 20.00"])
  end

  it 'credit record the transaction' do
    allow(transaction).to receive(:debit).with(20) { "#{time} || || 20.00 || -20.00" }
    expect(account.withdrawal(20)).to eq(["#{time} || || 20.00 || -20.00"])
  end

  it 'print the statement with the correct format' do
    allow(transaction).to receive(:credit).with(20) { "#{time} || 20.00 || || 20.00" }
    account.deposit(20)
    expect(account.statement).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 20.00")
  end
end
