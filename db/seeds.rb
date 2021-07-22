# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding started"

  Admin.destroy_all
  Admin.reset_pk_sequence
 
  User.destroy_all
  User.reset_pk_sequence
  
  Request.destroy_all
  Request.reset_pk_sequence

puts "Previous seed data deleted & ID reset!!"

  a1 = Admin.create!(name: "Itche", password: "123")
  a2 = Admin.create!(name: "Eric", password: "321")

puts "Admins created!"

  u1 = User.create!(name: "Barak", email: "barak@gmail.com", password: "789" )
  u2 = User.create!(name: "David", email: "david@gmail.com", password: "789" )
  u3 = User.create!(name: "Yosef", email: "yosef@gmail.com", password: "789" )
  u4 = User.create!(name: "Jenna", email: "jenna@gmail.com", password: "789" )
  u5 = User.create!(name: "Katie", email: "katie@gmail.com", password: "789" )

puts "Users created!"

  r1 = Request.create(
                      user_id: User.ids.sample,
                      name: "Mike", 
                      email: "mike@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,
                      marital_status: 'married', 
                      children: rand(0..10), 
                      work: "Flatiron", 
                      reason_header: "Financial Support", 
                      reason_body: "I need to save up for a house", 
                      amount: rand(500..15000) )
  r2 = Request.create(
                      user_id: User.ids.sample,
                      name: "Nick", 
                      email: "nick@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip, 
                      marital_status: 'single', 
                      children: rand(0..10), 
                      work: "Uber", 
                      reason_header: "Business startup", 
                      reason_body: "Covid struggles, so I would like to start my own bike business", 
                      amount: rand(500..15000) )
  r3 = Request.create(
                      user_id: 2,
                      name: "David", 
                      email: "david@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,                      
                      marital_status: 'divorced', 
                      children: rand(0..10), 
                      work: "Librarian", 
                      reason_header: "Donation", 
                      reason_body: "We would like to add a new art's section in  our children section", 
                      amount: rand(500..15000) )
  r4 = Request.create(
                      user_id: 4,
                      name: "Jenna", 
                      email: "jenna@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,                      
                      marital_status: 'seperated', 
                      children: rand(0..10), 
                      work: "Teacher", 
                      reason_header: "Career", 
                      reason_body: "I plan on pivoting my career and going to stufy software engineering", 
                      amount: rand(500..15000) )
  r5 = Request.create(
                      user_id: 3,
                      name: "Yosef", 
                      email: "yosef@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,                      
                      marital_status: 'married', 
                      children: rand(0..10), 
                      work: "Bus Driver", 
                      reason_header: "Health", 
                      reason_body: "A relative needs assistance in getting the mental help required", 
                      amount: rand(500..15000) )
  r6 = Request.create(
                      user_id: 1,
                      name: "Barak", 
                      email: "barak@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,                      
                      marital_status: 'married', 
                      children: 2, 
                      work: "Real Estate", 
                      reason_header: "Political", 
                      reason_body: "To lobby on hehalf of the homeless in NY", 
                      amount: rand(500..15000) )
  r7 = Request.create(
                      user_id: 5,
                      name: "Katie", 
                      email: "katie@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,                      
                      marital_status: 'single', 
                      children: 0, 
                      work: "Statistician", 
                      reason_header: "Donation", 
                      reason_body: "Upgrade the statistics lab on cancer patients", 
                      amount: rand(500..15000) )
  r8 = Request.create(
                      user_id: 1,
                      name: "Barak", 
                      email: "barak@gmail.com", 
                      telephone: Faker::PhoneNumber.cell_phone, 
                      address_number: Faker::Address.building_number,
                      address_street: Faker::Address.street_name,
                      address_city: Faker::Address.city,
                      address_state: Faker::Address.state, 
                      address_country: Faker::Address.country,
                      address_zip: Faker::Address.zip,
                      marital_status: 'married', 
                      children: 2, 
                      work: "Real Estate", 
                      reason_header: "Global Climate", 
                      reason_body: "A startup to find disposable goods that won't damage the planet", 
                      amount: rand(500..15000) )

puts "Requests created!"