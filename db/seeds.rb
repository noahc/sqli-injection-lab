# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#v
#
#76 Billion
user = User.create(name: "Bill Gates", email: "bill@example.com", password: "Microsoft", ssn: 8328351243)
account = Account.create(account_number: "CHK001", user_id: user.id , account_name: "Checking")
Transaction.create(transfer_to: 2, transfer_from: user.id, amount_in_cents: 10234234, account_id: account.id)
Account.create(account_number: "BRK001", user_id: user.id, account_name: "Broker", account_value: 19000000000)
Account.create(account_number: "SVN001", user_id: user.id, account_name: "Savings", account_value: 19000000000)
Account.create(account_number: "CHK001", user_id: user.id, account_name: "Checking", account_value: 38000000000)

#58.2 Billion
user = User.create(name: "Warren Buffet", email: "warren@example.com", password: "Berkshire", ssn: 8298128873)
Account.create(account_number: "BRK003", user_id: user.id, account_name: "Broker", account_value: 19400000000)
Account.create(account_number: "SVN002", user_id: user.id, account_name: "Savings", account_value: 19400000000)
Account.create(account_number: "CHK003", user_id: user.id, account_name: "Checking", account_value: 19400000000)

#48.0 Billion
user = User.create(name: "Larry Ellison", email: "larry@example.com", password: "Oracle", ssn: 8298128928)
Account.create(account_number: "BRK002", user_id: user.id, account_name: "Broker", account_value: 16000000000)
Account.create(account_number: "SVN003", user_id: user.id, account_name: "Savings", account_value: 16000000000)
Account.create(account_number: "CHK002", user_id: user.id, account_name: "Checking", account_value: 16000000000)
