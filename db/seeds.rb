# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Investment.delete_all

# cashflows = Cashflow.create([{"2001-01-01", -10000}, {"2002-01-01", 5000}])
Investment.create(name: 'Test Calculation', description: 'Sample investment with cashflows')
