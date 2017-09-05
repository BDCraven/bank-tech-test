require 'bigdecimal'

class BankAccount
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE, transactions = {})
    @balance = balance
    @transactions = transactions
  end

  def statement
    statement_header
    transactions.each do |key, value|
      puts "#{key.strftime("%d/%m/%Y")}||#{credit?(key)}||||#{"%.2f" % value[2]}"
    end
  end

  def statement_header
    puts "date || credit || debit || balance"
  end

  def credit?(key)

    if transactions[key][1] == "credit"
      "%.2f" % transactions[key][0]
    end
  end

  def deposit(amount)
    @balance += amount
    transactions[Time.new] = [amount, 'credit', balance]
  end

  private

  attr_reader :balance, :transactions

end
