require 'balance'

RSpec.describe Balance do
  subject(:balance) { Balance.new }

  it 'increase the balance' do
    expect(balance.plus(20)).to eq(20)
  end

  it 'increase the balance' do
    expect(balance.minus(20)).to eq(-20)
  end
end
