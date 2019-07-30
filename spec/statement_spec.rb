require 'statement'

RSpec.describe Statement do
  subject(:statement) { Statement.new }
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'it build a statement string' do
    statement.history << "#{time} || 20.00 || || 20.00"
    statement.history << "#{time} || 20.00 || || 40.00"
    expect(statement.create).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 40.00\n#{time} || 20.00 || || 20.00")
  end
end
