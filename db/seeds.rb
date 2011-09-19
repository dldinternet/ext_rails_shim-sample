# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.delete_all
1.upto(100) do |i|
  Book.create(
    title: Faker::Lorem.words.map(&:capitalize).join(' '),
    author: Faker::Name.name
  )
end
