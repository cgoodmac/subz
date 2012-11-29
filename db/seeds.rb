# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Line.delete_all

lines = "1 2 3 4 5 6 7 A C E H B D F M G J Z L N Q R S SIR @".split(' ')

lines.each do |line|
	Line.create(:name => line)
end