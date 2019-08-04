require 'statement'

RSpec.describe Statement do
  subject(:statement) { Statement.new }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'it build a statement string' do
    history = [{ time: time, credit: 20, debit: '', balance: 20 }, { time: time, credit: 20, debit: '', balance: 40 }]
    expect(statement.create(history)).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 40.00 \n#{time} || 20.00 || || 20.00 ")
  end
end
