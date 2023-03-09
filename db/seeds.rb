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

user1 = User.create(email: "toto@gmail.com", password:"123456", username: "toto")


paul_cluzot = Candidat.create(photo: 'centre.jpg', first_name: "Paul", last_name:"Cluzot", partie:"Liberal")
marie_clotilde_autain = Candidat.create(photo: 'droite.png', first_name: "Marie-Clotilde", last_name:"Autain", partie:"L'array publique")
maryame_taubica = Candidat.create(photo: 'extreme-gauche.jpg', first_name: "Maryame", last_name:"Taubica", partie:"La france indomptable")
rabbia_kelaoua = Candidat.create(photo: 'gauche.png', first_name: "Rabbia", last_name:"Kelaoua", partie:"La democratie en marche")
gerard_martin = Candidat.create(photo: 'extreme-droite.png', first_name: "Gerard", last_name:"Martin", partie:"Partie nationaliste")
