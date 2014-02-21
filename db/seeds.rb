# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


House.destroy_all
Student.destroy_all

4.times do
  h = House.create(name: Faker::DizzleIpsum.word.titleize)
end

20.times do
  Student.create(name: Faker::Name.name)
end
