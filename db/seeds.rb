# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# quotes = ['first quote', 'second quote']
# for quote in quotes do 
#     Quote.create(name:quote)
# end

companies = [
    {name:'SSI'},
    {name:'EMPG'}
]

users = [
    {email:'mehtab@gmail.com', password:'mehtabgmail', company_id:1},
    {email:'fali@gmail.com', password:'faligmail', company_id:1},
    {email:'adeel@gmail.com', password:'adeelgmail', company_id:2},
    {email:'shehroz@gmail.com', password:'shehrozgmail', company_id:2}
]

companies.each do |company| 
    Company.create!(name:company[:name])
end

users.each do |user|
    User.create!(email:user[:email], password:user[:password], company_id:user[:company_id])
end