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

paul_cluzot = Candidat.new(first_name: "Paul", last_name: "Cluzot", partie: "Parti Liberal", programm: "Votre choix lors des élections d'avril est crucial. Qui allez-vous choisir pour diriger le pays pendant les 5 prochaines années ? Qui allez-vous choisir pour améliorer votre vie quotidienne et celle de vos enfants ? En votant pour moi, vous voterez pour préparer l'avenir en investissant dans les énergies renouvelables, en créant une taxe carbone écologique aux frontières de l'Europe et en faisant de l'éducation une priorité. Vous voterez également pour notre jeunesse, les travailleurs, les familles et les retraités, ainsi que pour l'égalité pour tous. Vous voterez pour vivre mieux, en bonne santé et en sécurité, avec un accès plus facile aux soins médicaux et une administration plus simple. En votant pour moi, vous voterez pour une République et une Nation plus fortes dans notre Europe. Vous serez associés à chaque grande décision et je veillerai à protéger nos valeurs de liberté, d'égalité, de fraternité et de laïcité. Les temps de crise que nous traversons et les grandes transformations que nous vivons ne laisseront personne au bord du chemin.", compteur: 0)

paul_cluzot.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'centre.jpg')), content_type: "image/jpg",filename:"Paul Cluzot Photo")

paul_cluzot.save


marie_clotilde_autain = Candidat.new(first_name: "Marie-Clotilde", last_name: "Autain", partie: "L'array Publique", programm: "En ces cinq dernières années, nous avons subi des crises importantes : attaques terroristes, mouvement des gilets jaunes, pandémie de la Covid et guerre en Europe. Notre pays s'affaiblit considérablement depuis dix ans : violence croissante, immigration incontrôlée, pouvoir d'achat en baisse, service public éprouvé, déficits et dette en hausse. Nous avons besoin d'une France forte dans une Europe puissante pour faire face à un monde instable et dangereux. Nous devons reconstruire ensemble. Pour cela, je souhaite une France puissante sur le plan militaire et qui retrouve sa souveraineté industrielle, énergétique, agricole et numérique. Nous devons protéger nos valeurs et nos intérêts stratégiques au sein de l'Europe. Nous contrôlerons strictement l'immigration et renverrons les clandestins. Nous garantirons des salaires justes et des retraites dignes. Nous libérerons les énergies de nos entrepreneurs, chercheurs et territoires. Nous simplifierons la bureaucratie étouffante. Nous défendrons une écologie de progrès et de solutions. Notre école sera la fabrique de la Nation, de l'exigence, du mérite républicain et de l'amour de la France. Nous prendrons soin de nos aînés. Notre France est une et indivisible. Nous serons implacables face à l'islamisme et à tous ceux qui s'attaquent à la République. Je vous demande votre confiance pour reconstruire une France plus forte, plus libre et plus juste. Forte de mon expérience de ministre et de dirigeante en temps de crise, je serai Présidente pour tous les Français.", compteur: 0)

marie_clotilde_autain.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'droite.png')), content_type:"image/jpg", filename:"marie_clotilde_autain.Photo")

marie_clotilde_autain.save


maryame_taubica = Candidat.new(first_name: "Maryame", last_name:"Taubica", partie:"La France Indomptable", programm: "Le système est en difficulté. Pour changer cela, nous disposons d'un programme nommé l'avenir en commun, d'une méthode appelée Union populaire et d'une équipe prête à gouverner. Le projet consiste à construire une société basée sur l'entraide, visant à harmoniser les relations entre les êtres humains et la nature. Il s'agit de mettre fin à la maltraitance sociale, promouvoir l'égalité réelle entre les femmes et les hommes, refonder la démocratie en organisant la 6e République, planifier la bifurcation écologique de la production et des consommations pour enrayer les conséquences du changement climatique et agir pour la paix en tant qu'altermondialistes non-alignés. Ma priorité sera de redonner du pouvoir d'achat au peuple, en portant le SMIC à 1 400 euros net, en augmentant les salaires des fonctionnaires, les petites retraites et les minima sociaux, en bloquant le prix des produits de première nécessité et en ramenant le prix de l'essence à 1,40 euros. Nous reconstruirons l'hôpital public, titulariserons les contractuels de la fonction publique et travaillerons à l'inclusion des personnes en situation de handicap. Nous appliquerons également la règle verte, en sortant du nucléaire et en renouvelant à 100% les énergies dès 2050. Nous mènerons une révolution agroalimentaire pour interdire le glyphosate, les fermes-usines et les pratiques cruelles contre les animaux. Nous proposons une conférence européenne extraordinaire pour la sécurité et les frontières, afin de faire face au nouveau danger de guerre généralisée. Enfin, nous appliquerons notre programme même s'il oblige à désobéir aux traités européens.", compteur: 0)

maryame_taubica.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-gauche.jpg')), content_type:"image/jpg", filename:"maryame_taubica Photo")

maryame_taubica.save


rabbia_kelaoua = Candidat.new(first_name: "Rabbia", last_name:"Kelaoua", partie:"La Democratie en Marche", programm: "Depuis l'agression russe contre l'Ukraine, l'Europe est confrontée à la guerre et les démocraties doivent assumer leurs responsabilités. En tant qu'Européen convaincu, je m'engagerai à renforcer l'Europe par la justice et la solidarité, notamment en contribuant à la création d'une défense commune forte et autonome. Pour relever le défi social, je m'engage à rendre justice aux travailleurs de première ligne, à étendre les droits des travailleurs et à restaurer les services publics prioritaires tels que l'école et l'hôpital. Je renforcerai également la protection sociale et l'inclusion des personnes en situation de handicap. Pour répondre aux enjeux environnementaux, je conduirai la réindustrialisation décarbonée du pays, grâce à 4 grandes odyssées industrielles. Je veux redonner le pouvoir aux citoyens en réformant la Ve République, en instaurant le référendum d'initiative citoyenne et en procédant à un nouvel acte de décentralisation. Enfin, je lancerai un plan de lutte contre la délinquance pour assurer la sécurité du quotidien, donner plus de moyens à la justice et rendre à la culture et aux artistes la place qui leur revient.", compteur: 0)

rabbia_kelaoua.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'gauche.png')), content_type: "image/jpg", filename:"rabbia_kelaoua  Photo")

rabbia_kelaoua.save


gerard_martin = Candidat.new(first_name: "Gerard", last_name: "Martin", partie: "Parti Nationaliste", programm: "Comme mère, je refuse de laisser à mes enfants un pays livré à l’insécurité, la précarité, la fatalité. Comme femme, je refuse de voir reculer des libertés et droits que nous pensions pourtant acquis. Comme Française, je refuse de me résigner et veux apporter à mes compatriotes le changement qu’ils
appellent de leurs vœux. Vous me connaissez. Quand d’autres ont sacrifié la France et les Français pour leur carrière, j’ai consacré ma vie à vous défendre. Vous, Français, de métropole et d’Outre-mer, qui embrassez le monde et la modernité tout en restant viscéralement ancrés dans nos valeurs et attachés à notre civilisation, notre histoire, nos traditions et modes de vie. Vous, Français, qui à travers les crises prenez soin de nos aînés, soignez les plus fragiles, éduquez nos enfants, faites tourner nos usines, vivre nos entreprises, vous qui cultivez nos terres, innovez et poussez le génie français vers des horizons nouveaux. Vous, Français, qui êtes confrontés au déclassement et constatez le déclin de notre pays, mais qui savez qu’un sursaut peut rendre à la France sa grandeur et aux Français leur bonheur. C’est pour vous que je suis candidate à la présidence de la République. Pour tourner la page d’un quinquennat de mépris, de baisse de votre pouvoir d’achat, d’explosion de l’immigration, de laxisme face à l’insécurité, de mensonges et de provocations.", compteur: 0)

gerard_martin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'extreme-droite.png')), content_type: "image/jpg", filename:"gerard_martin Photo")

gerard_martin.save
