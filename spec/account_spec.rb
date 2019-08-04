require 'account'

RSpec.describe Account do
  subject(:balance) { double 'Balance' }
  subject(:transaction) { double 'Transaction' }
  subject(:m_statement) { double 'Statement' }
  subject(:insta_statement) { double 'Insta_statement' }
  subject(:account) { Account.new(transaction, m_statement) }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'deposit record the transaction' do
    allow(balance).to receive(:plus).with(20) { 20 }
    allow(transaction).to receive(:new) { transaction }
    allow(transaction).to receive(:credit).with(20, balance.plus(20)) { { time: time, credit: 20, debit: '', balance: 20 } }
    expect(account.deposit(20)).to eq([{ time: time, credit: 20, debit: '', balance: 20 }])
  end

  it 'credit record the transaction' do
    allow(balance).to receive(:minus).with(20) { -20 }
    allow(transaction).to receive(:new) { transaction }
    allow(transaction).to receive(:debit).with(20, balance.minus(20)) { { time: time, credit: 20, debit: '', balance: -20 } }
    expect(account.withdrawal(20)).to eq([{ time: time, credit: 20, debit: '', balance: -20 }])
  end

  it 'print the statement with the correct format' do
    allow(m_statement).to receive(:new) { insta_statement }
    allow(insta_statement).to receive(:create) { "date || credit || debit || balance\n#{time} || 20.00 || || 20.00 " }
    expect { account.statement }.to output("date || credit || debit || balance\n#{time} || 20.00 || || 20.00 ").to_stdout
  end
end
