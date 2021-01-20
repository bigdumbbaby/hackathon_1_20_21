# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Furnature.destroy_all
Customer.destroy_all


bob = Customer.create name: "Bob", age: 25, moving_date: "January"
frank = Customer.create name: "Frank", age: 50, moving_date: "Febuary"
john = Customer.create name: "John", age: 65, moving_date: "March"

Furnature.create([
    {name: "Table", size: "medium", customer: bob},
    {name: "Chair", size: "small", customer: frank},
    {name: "Bed", size: "large", customer: john},
    {name: "Dresser", size: "medium", customer: john},
    {name: "Fridge", size: "large", customer: frank},
])
