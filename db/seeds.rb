# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..10).each do |no|
	User.create(username: "user#{no}", email: "user#{no}@example.com", password: "password", password_confirmation: "password")
end

(1..3).each do |no|
	user = User.find(no).friend_ids = (4..10).to_a.sample(2)
end
