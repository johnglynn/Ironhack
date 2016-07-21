# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "John Glynn", email: "john.glynn@outlook.com")
User.create(name: "David Knight", email: "dev@davidjamesknight.com")

Product.create(title: "Widget", description: "Does nothing!", deadline: "07/11/2016", user_id: 4)
Product.create(title: "Thingamajig", description: "Also does nothing!", deadline: "07/11/2016", user_id: 4)
Product.create(title: "Doohickie", description: "Does nothing as well!", deadline: "07/11/2016", user_id: 4)

# Oops—We forgot to include a "user_id" attribute when we created the Product model. To do that now, we'll have to run the following in the terminal:

#   rails g migration add_user_id_to_products user_id:integer

# Alternate syntax: 

#   rails g migration AddUser_idToProducts user_id:integer