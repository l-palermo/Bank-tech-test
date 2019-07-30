require 'account'

RSpec.describe Account do
  subject(:time) { Time.now.strftime('%d/%m/%y') }

  it 'allow the user to make a deposit and see the statement' do
    account = Account.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdrawal(500)
    expect(account.statement).to eq("date || credit || debit || balance\n#{time} || || 500.00 || 2500.00\n#{time} || 2000.00 || || 3000.00\n#{time} || 1000.00 || || 1000.00")
  end
end
