# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
movie1 = Movie.create(title: "Under the same moon", year: 2007, plot: "Carlitos, a young boy who travels from Mexico to Los Angeles to find his mother, Rosario, who works illegally in the United States to provide for him and her ailing mother.")
actor1 = Actor.create(
  first_name: "Eugenio",
  last_name: "Derbez",
  known_for: "Comedy",
  movie_id: movie1.id
)
actor2 = Actor.create(
   first_name: "Kate",
  last_name: "Del Castillo",
  known_for: "Action",
  movie_id: movie1.id
)
actor3 = Actor.create(
   first_name: "Gabriel",
  last_name: "Porras",
  known_for: "Action/Novelas",
  movie_id: movie1.id
)
actor4 = Actor.create(
   first_name: "America",
  last_name: "Ferrera",
  known_for: "Comedy",
  movie_id: movie1.id
)
actor5 = Actor.create(
   first_name: "Sonya",
  last_name: "Smith",
  known_for: "Comedy",
  movie_id: movie1.id
)
