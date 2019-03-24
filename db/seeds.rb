# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Category.new(name: "Vo募集").save!
    Category.new(name: "Player募集").save!
    Category.new(name: "Engineer募集").save!
    Category.new(name: "Illustration募集").save!
    Category.new(name: "Movie募集").save!AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?