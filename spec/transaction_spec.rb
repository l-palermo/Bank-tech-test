require 'transaction'

RSpec.describe Transaction do
  subject(:transaction) { Transaction.new }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'returns a string showing the transaction' do
    expect(transaction.credit(20, 20)).to eq(time: time, credit: 20, debit: '', balance: 20)
  end

  it 'creates an hash with the current time, debit value and balance' do
    expect(transaction.debit(20, -20)).to eq(time: time, credit: '', debit: 20, balance: -20)
  end
end
