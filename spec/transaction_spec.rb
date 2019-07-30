require 'transaction'

RSpec.describe Transaction do
  subject(:balance) { double "Balance" }
  subject(:transaction) { Transaction.new(balance) }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'returns a string showing the transaction' do
    allow(balance).to receive(:plus).with(20) { 20 }
    expect(transaction.credit(20)).to eq("#{time} || 20.00 || || 20.00")
  end

  it 'returns a string showing the transaction' do
    allow(balance).to receive(:minus).with(20) { -20 }
    expect(transaction.debit(20)).to eq("#{time} || || 20.00 || -20.00")
  end

end