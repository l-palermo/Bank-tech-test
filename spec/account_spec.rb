require 'account'

RSpec.describe Account do

  subject(:account) { Account.new }

  it 'has a balance attaribute eq 0' do
    expect(account.balance).to eq(0)
  end
end