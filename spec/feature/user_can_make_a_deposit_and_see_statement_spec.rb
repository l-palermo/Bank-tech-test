require 'account'

RSpec.describe Account do
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'allow the user to make a deposit and see the statement' do
    account = Account.new
    account.deposit(20)
    expect(account.statement).to eq("date || credit || debit || balance\n#{time} || 20.00 || || 20.00")
  end
end