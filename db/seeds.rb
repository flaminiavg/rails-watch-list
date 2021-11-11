# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://www.istockphoto.com/photo/teamwork-of-business-concept-group-of-businessperson-human-resources-gm1271634341-374159141?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fmovie-poster&utm_term=movie%20poster%3A%3Asearch-aggressive-affiliates-v2%3Aa',
    rating: [0..5].sample
  )
end
