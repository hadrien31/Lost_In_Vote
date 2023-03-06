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


paul_cluzot = Candidat.create(photo: "", first_name: "Paul", last_name:"Cluzot", partie:"liberal")
marie_clotilde_autain = Candidat.create(photo: "", first_name: "Marie-Clotilde", last_name:"Autain", partie:"l'array publique")
maryame_taubica = Candidat.create(photo: "", first_name: "maryame", last_name:"taubica", partie:"la france indomptable")
rabbia_kelaoua = Candidat.create(photo: "", first_name: "rabbia", last_name:"kelaoua", partie:"la democratie en marche")
gerard_martin = Candidat.create(photo: "", first_name: "Gerard", last_name:"Martin", partie:"partie nationaliste")
