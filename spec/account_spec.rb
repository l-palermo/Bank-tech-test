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

  it 'withdrawal the required ammount' do
    account.withdrawal(20)
    expect(account.balance).to eq(-20)
  end

  it 'has a debit property that stores keep note of the taken money' do
    account.withdrawal(20)
    expect(account.debit).to eq(20)
  end
end