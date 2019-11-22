# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Lesson.destroy_all
User.destroy_all
student = User.create!(email: "students2@gmail.com", password: "blahblah", first_name: "dasokf", last_name: "asdmasdasd", role:"student")
tutor = User.create!(email: "tutors2@gmail.com", password: "blahblah", first_name: "dasokf", last_name: "asdmasdasd", role:"tutor")
lesson1 = Lesson.create!(name: 'Ruby', price: 50, location: 'Rua do Comércio 176-178, Lisbon', description: 'Experienced teacher with masters in software engineering')
lesson2 = Lesson.create!(name: 'Ruby on Rails', price: 50, location: 'Largo Barão Quintela 11, Lisbon', description: 'Great atmosphere during classes')
lesson3 = Lesson.create!(name: 'PHP', price: 60, location: 'Rua de Diogo Botelho, Porto', description: 'Best price for PHP in Porto!')
lesson4 = Lesson.create!(name: 'HTML', price: 20, location: 'Rua de São Mamede 16C, Lisbon', description: 'Learn basics of HTML in just two hours!')
lesson5 = Lesson.create!(name: 'Javascript', price: 65, location: 'Rua Prof. Mira Fernandes 91, Lisbon', description: 'From beginner to expert!')
lesson6 = Lesson.create!(name: 'Python', price: 55, location: 'Praça da Constituição de 1976, Lisbon', description: 'Learn Python for Data Science and Machine Learning')
lesson7 = Lesson.create!(name: 'C++', price: 80, location: 'Rua Dom Luís I, Lisbon', description: 'C++ with an experienced tutor')
lesson8 = Lesson.create!(name: 'SQL', price: 45, location: 'Rua da Boavista 869, Porto', description: 'Learn basics of SQL')
lesson9 = Lesson.create!(name: 'React', price: 55, location: 'Rua Santo António à Estrela 80, Lisbon', description: 'Learn one of the most popular frameworks!')
lesson10 = Lesson.create!(name: 'Angular', price: 55, location: 'Rua de Santo António da Glória, Lisbon', description: 'Best framework with the best teacher! ')
lesson11 = Lesson.create!(name: 'Angular introduction', price: 75, location: 'Tv. Abarracamento de Peniche 14, Lisbon ', description: 'Best framework INTRODUCTION with the best teacher')
booking = Booking.create!(date: Date.today, student: student, lesson: lesson1 )
booking = Booking.create!(date: Date.today, student: student, lesson: lesson2 )

