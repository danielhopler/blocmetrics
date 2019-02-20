# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random_data'
require 'faker'

3.times do
  User.create!(
    username: Faker::Movies::HarryPotter.character,
    email: Faker::Internet.email,
    password: 'password',
    confirmed_at: Time.now
  )
end

users = User.all

User.first.update_attributes!(
	username: 'dhopler',
	email: 'djhopler@example.com',
	password: 'password',
	confirmed_at: Time.now
)

10.times do
	RegisteredApplication.create!(
		name: Faker::App.name,
		url: Faker::Internet.url,
		user: users.sample
	)
end

registered_applications = RegisteredApplication.all

50.times do
	Event.create!(
		name: Faker::Movies::HarryPotter.spell,
		registered_application: registered_applications.sample
	)
end

puts "Seed finished"
puts "#{User.count} Users created"
puts "#{User.first.email} is first user"
puts "#{RegisteredApplication.count} Registered Apps created"
puts "#{Event.count} Events created"
