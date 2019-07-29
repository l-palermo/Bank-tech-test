require 'account'

RSpec.describe Account do

  subject(:account) { Account.new }

  it 'has a balance attaribute eq 0' do
    expect(account.balance).to eq(0)
  end

  it 'stores money when a deposit is made' do
    account.deposit(20)
    expect(account.balance).to eq(20)
  end
end