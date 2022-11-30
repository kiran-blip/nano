# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(first_name:"John", last_name:"Doe", email:"kiran@x.com", password: "123456")

Activity.create!(name: "bowling", user_id: 1, tag: "fun")
Activity.create!(name: "shooting", user_id: 1, tag: "sport")
Activity.create!(name: "skiing", user_id: 1, tag: "sport")
Activity.create!(name: "skating", user_id: 1, tag: "sport")
Activity.create!(name: "running", user_id: 1, tag: "sport")

Tag.destroy_all if Rails.env.development?

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

names.each do |name|
  Tag.create!(name: name)
end
