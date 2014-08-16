# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Letter.delete_all
Letter.create!(id: 1, content: "You're rad!", user_id: 1, status: 0, read_count: 0, thanks_count: 0)
Letter.create!(id: 2, content: "Thanks for making my day!", user_id: 1, status: 1, read_count: 3, thanks_count: 2)
Letter.create!(id: 3, content: "You're a bitch!", user_id: 1, status: 2, read_count: 1, thanks_count: 0)
Letter.create!(id: 4, content: "This comment should be hidden.", user_id: 1, status: 3, read_count: 1, thanks_count: 0)
