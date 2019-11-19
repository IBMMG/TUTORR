# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "email@gmail.com", password: "blahblah", first_name: "dasokf", last_name: "asdmasdasd", role:"student")

Lesson.create(name: 'ruby basics', price: 20, location: 'Lisbon', description: 'abc')
lesson = Lesson.create(name: 'ruby 101', price: 20, location: 'Lisbon', description: 'abc')

Booking.create(date: Date.today)
booking = Booking.create(date: Date.today, user: user.first)
