# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Candidat.destroy_all
Questionnaire.destroy_all
User.destroy_all

User.create(email: "toto@gmail.com", password:"123456", username: "toto")

paul_cluzot = Candidat.new(first_name: "PAUL", last_name: "CLUZOT", partie: " Parti Liberal", programm: "")
paul_cluzot.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'centre.jpg')), content_type: "image/jpg",filename:"Paul Cluzot Photo")
paul_cluzot.save

marie_clotilde_autain = Candidat.new(first_name: "MARIE_CLOTILDE", last_name: "AUTAIN", partie: "L'Array Publique", programm: "")
marie_clotilde_autain.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'droite.png')), content_type:"image/jpg", filename:"marie_clotilde_autain.Photo")
marie_clotilde_autain.save

maryame_taubica = Candidat.new(first_name: "MARYAME", last_name: "TAUBICA", partie:"La France Indomptable", programm: "")
maryame_taubica.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-gauche.png')), content_type:"image/jpg", filename:"maryame_taubica Photo")
maryame_taubica.save

rabbia_kelaoua = Candidat.new(first_name: "RABBIA", last_name: "KELAOUA", partie:"La Democratie En Marche", programm: "")
rabbia_kelaoua.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'gauche.png')), content_type: "image/jpg", filename:"rabbia_kelaoua  Photo")
rabbia_kelaoua.save

gerard_martin = Candidat.new(first_name: "GERARD", last_name: "MARTIN", partie: "Partie Nationaliste", programm: "")
gerard_martin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-droite.png')), content_type: "image/jpg", filename:"gerard_martin Photo")
gerard_martin.save

Candidat.create(photo: 'centre.jpg', first_name: "Paul", last_name:"Cluzot", partie:"Liberal", programm: "", compteur: 0)
Candidat.create(photo: 'droite.png', first_name: "Marie-Clotilde", last_name:"Autain", partie:"L'array publique", programm: "", compteur: 0)
Candidat.create(photo: 'extreme-gauche.png', first_name: "Maryame", last_name:"Taubica", partie:"La france indomptable", programm: "", compteur: 0)
Candidat.create(photo: 'gauche.png', first_name: "Rabbia", last_name:"Kelaoua", partie:"La democratie en marche", programm: "", compteur: 0)
Candidat.create(photo: 'extreme-droite.png', first_name: "Gerard", last_name:"Martin", partie:"Partie nationaliste", programm: "", compteur: 0)

