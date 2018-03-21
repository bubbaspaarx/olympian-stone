# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'koala'

puts "Destroying all photos"
Photo.destroy_all

puts "Adding photos from profile"

@graph = Koala::Facebook::API.new

profile = @graph.get_object("me/photos?fields=source")

profile.each do |photo|
  Photo.create!(photo: photo['source'])
end

puts "photos added"
