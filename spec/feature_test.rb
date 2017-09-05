require './lib/bankaccount.rb'

newaccount = BankAccount.new
# newaccount.statement
newaccount.deposit(1000)
# newaccount.statement
newaccount.deposit(2000)
newaccount.withdrawal(500)

newaccount.statement
