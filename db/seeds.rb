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


Candidat.create(photo: 'centre.jpg', first_name: "Paul", last_name:"Cluzot", partie:"le Liberal", programm: "", compteur: 0)
Candidat.create(photo: 'droite.png', first_name: "Marie-Clotilde", last_name:"Autain", partie:"L'array publique", programm: "", compteur: 0)
Candidat.create(photo: 'extreme-gauche.png', first_name: "Maryame", last_name:"Taubica", partie:"La france indomptable", programm: "Créer une « garantie dignité » : revaloriser les minima sociaux (aucun niveau de vie en-dessous du seuil de pauvreté).

Loi d’urgence sociale comprenant notamment le blocage des prix des produits de première nécessité (gaz, électricité, alimentation).

Restructurer les emprunts des ménages surendettés et garantir à tous l’accès effectif aux services bancaires de base.

Lutter contre le non-recours aux droits sociaux et civiques par la simplification des démarches.

Proposer une garantie d’autonomie au-dessus du seuil de pauvreté à partir de 16 ans et pour chaque étudiant détachée du foyer fiscal de ses parents (soit 1 063 euros pour une personne seule).", compteur: 0)
Candidat.create(photo: 'gauche.png', first_name: "Rabbia", last_name:"Kelaoua", partie:"La democratie en marche", programm: "", compteur: 0)
Candidat.create(photo: 'extreme-droite.png', first_name: "Gerard", last_name:"Martin", partie:"Partie nationaliste", programm: "Prêt aux jeunes parents qu’ils n’auraient plus besoin de rembourser après la naissance de leur troisième enfant.

  Réserver les aides sociales aux Français.

  Moduler la prime d’activité pour l’augmenter dans les secteurs d’activité souffrant le plus d’une pénurie de main-d’œuvre.

  Créer une prime pour les étudiants qui travaillent, conditionnée à la validation de leurs semestres.

  Doubler l'allocation de soutien familial (ASF).", compteur: 0)
