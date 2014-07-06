# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#v
#
user = User.create(name: "Texas", email: "texas@usa.com", password: "Dallas")
account = Account.create(account_number: "CHK001", user_id: user.id , account_name: "Checking")
Transaction.create(transfer_to: "Mom", transfer_from: user.name, amount_in_cents: 10234234, account_id: account.id)
Account.create(account_number: "BRK001", user_id: user.id, account_name: "Broker")


user = User.create(name: "Texas", email: "maine@usa.com", password: "Portland")
Account.create(account_number: "CHK002", user_id: user.id, account_name: "Checking")
