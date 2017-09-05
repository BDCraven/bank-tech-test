require 'bankaccount'

describe BankAccount do
  subject(:bankaccount) { described_class.new }

  # let(:deposit) { double(:deposit) }

  it 'has an empty statement when initialized' do
    statement = "date || credit || debit || balance\n"
    expect { (bankaccount.statement) }.to output(statement).to_stdout
  end

  before do
    allow(Time).to receive(:now) { '2017-09-05 13:27:40 +0100' }
  end

  it 'statement shows the balance after a deposit' do
    bankaccount.deposit(1000)
    deposit_details = "date || credit || debit || balance\n05/09/2017||1000.00||||1000.00\n"
    expect { (bankaccount.statement) }.to output(deposit_details).to_stdout
  end

  describe '#deposit' do

    it { is_expected.to respond_to(:deposit).with(1).argument }
  end


end
