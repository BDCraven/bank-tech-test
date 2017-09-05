require 'bankaccount'

describe BankAccount do
  subject(:bankaccount) { described_class.new }

  it 'has an empty statement when initialized' do
    statement = 'date || credit || debit || balance'
    expect(bankaccount.statement).to eq(statement)
  end
end
