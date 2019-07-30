require 'transaction'

RSpec.describe Transaction do
  subject(:transaction) { Transaction.new }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'returns a string showing the transaction' do
    expect(transaction.credit(20)).to eq("\n#{time} || 20.00 || || 20.00")
  end

  it 'returns a string showing the transaction' do
    expect(transaction.debit(20)).to eq("\n#{time} || || 20.00 || -20.00")
  end

end