# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(name: "Example User",
	email: "example@railstutorial.org",
	password: "foobar",
	password_confirmation: "foobar",
	isSeller: true)
# Generate a bunch of additional users.
30.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "password"
	User.create!(name: name,
		email: email,
		password: password,
		password_confirmation: password,
		isSeller: false)
end

Category.create!(name: "Grocery")
Category.create!(name: "Home Appliances")
Category.create!(name: "Electronics")
Category.create!(name: "Beauty")



20.times do |n|
	name = Faker::Commerce.product_name
	description = Faker::Commerce.material
	price = Faker::Commerce.price
	discount_amt = n+10
	stock = n
	reviews = Faker::Lorem.sentence(word_count: 5)
	category = n%4 +1 
	users = User.all
	user  = users.first
	user_id = user.id
	p = Product.new(name: name,
		description: description,
		price: price,
		discount_amt: discount_amt,
		stock: stock,
		reviews: reviews,
		category_id: category,
		user_id: user_id)

	p.save!

end
