# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Delete existing records
PostTag.delete_all
Tag.delete_all
Post.delete_all
User.delete_all


# Create users
users = [
  User.create!(name: "Maximiliano Figueroa", email: "mfigueroa4@miuandes.cl", password: 'hola123'),
  User.create!(name: "Nicolas Baeza", email: "nabaeza@miuandes.cl", password: 'cars123'),
  User.create!(name: "Gonzalo Massardo", email: "gmassardo@miuandes.cl", password: 'paltas123'),
  User.create!(name: "Martina Nick", email: "mmnick@miuandes.cl", password: 'sur123'),
  User.create!(name: "Miakela Stambuk", email: "msatambuk@miuandes.cl", password: 'casa123')
]

# Create tags
tags = [
  Tag.create!(name: "Party"),
  Tag.create!(name: "Eating"),
  Tag.create!(name: "Music"),
  Tag.create!(name: "Climing"),
  Tag.create!(name: "Adventure")
]

# Create posts
posts = [
  Post.create!(title: "The NEW Partys in Chile", content: "Discover new places to party.", user: users[0], published_at: Time.zone.now, tags: [tags[0]]),
  Post.create!(title: "Exploring the Party Scene in Big Cities", content: "Discovering vibrant nightlife and events.", user: users[1], published_at: Time.zone.now, tags: [tags[0]]),
  Post.create!(title: "Healthy Eating Habits for a Better Life", content: "Tips and recipes for a balanced diet.", user: users[2], published_at: Time.zone.now, tags: [tags[1]]),
  Post.create!(title: "The new style of music TECHENGE", content: "Exploring the diversity of modern music reggaeton + Electronic music.", user: users[3], published_at: Time.zone.now, tags: [tags[2]]),
  Post.create!(title: "The Thrill of Climbing Mountains", content: "Experiences from conquering challenging peaks.", user: users[4], published_at: Time.zone.now, tags: [tags[3]]),
  Post.create!(title: "Adventures in the patagonia", content: "Exploration and excitement in nature.", user: users[0], published_at: Time.zone.now, tags: [tags[4]]),
  Post.create!(title: "Indoor Party Ideas for All Ages", content: "Fun activities and themes for indoor gatherings.", user: users[1], published_at: Time.zone.now, tags: [tags[0]]),
  Post.create!(title: "Best places to eat in santiago", content: "The bests burguer turcks in Chile.", user: users[2], published_at: Time.zone.now, tags: [tags[1]]),
  Post.create!(title: "The Impact of Music on Mental Health", content: "Understanding music's therapeutic effects.", user: users[3], published_at: Time.zone.now, tags: [tags[2]]),
  Post.create!(title: "Tips for Safe Climbing Expeditions", content: "Safety measures and preparation for climbing.", user: users[4], published_at: Time.zone.now, tags: [tags[3]])
]
