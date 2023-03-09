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


paul_cluzot = Candidat.new(first_name: "Paul", last_name: "Cluzot", partie: "Parti Liberal", programm: "", compteur: 0)

paul_cluzot.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'centre.jpg')), content_type: "image/jpg",filename:"Paul Cluzot Photo")

paul_cluzot.save


marie_clotilde_autain = Candidat.new(first_name: "Marie-Clotilde", last_name: "Autain", partie: "L'array Publique", programm: "", compteur: 0)

marie_clotilde_autain.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'droite.png')), content_type:"image/jpg", filename:"marie_clotilde_autain.Photo")

marie_clotilde_autain.save


maryame_taubica = Candidat.new(first_name: "Maryame", last_name:"Taubica", partie:"La France Indomptable", programm: "", compteur: 0)

maryame_taubica.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-gauche.jpg')), content_type:"image/jpg", filename:"maryame_taubica Photo")

maryame_taubica.save


rabbia_kelaoua = Candidat.new(first_name: "Rabbia", last_name:"Kelaoua", partie:"La Democratie en Marche", programm: "", compteur: 0)

rabbia_kelaoua.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'gauche.png')), content_type: "image/jpg", filename:"rabbia_kelaoua  Photo")

rabbia_kelaoua.save


gerard_martin = Candidat.new(first_name: "Gerard", last_name: "Martin", partie: "Parti Nationaliste", programm: "", compteur: 0)

gerard_martin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-droite.png')), content_type: "image/jpg", filename:"gerard_martin Photo")

gerard_martin.save
