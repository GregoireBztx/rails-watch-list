# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'
List.destroy_all
Movie.destroy_all
i=1
8.times {
url = "http://tmdb.lewagon.com/movie/popular?page=#{i}"
user_serialized = URI.open(url).read
movies = JSON.parse(user_serialized)
results = movies["results"]
results.each do |movie|
    Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original#{movie["poster_path"]}", rating: movie["vote_average"])
end
i +=i
}

puts "Impoted #{Movie.count} Movies"
