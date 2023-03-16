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

paul_cluzot = Candidat.new(first_name: "Paul", last_name: "Cluzot", partie: "Parti Libéral",
  career: "Né le 21 décembre 1965 à Amiens, il sort diplômé de Sciences Po en 2001 ; il suit en parallèle un cursus en philosophie à l'université Paris-Nanterre et y obtient successivement une maîtrise en 2000 et un DEA en 2001.
  Il poursuit ses études à l'ENA à Strasbourg dans la promotion Léopold-Sédar-Senghor (2002-2004). Sorti de l'École Nationale d'Administration en 2004, il devient Inspecteur des finances. En septembre 2008, il se met en disponibilité de la fonction publique et devient banquier d'affaires chez Rothschild & Cie.
   Proche du Mouvement des Citoyens puis membre du Parti Socialiste de 2006 à 2009, il participe à la campagne électorale de François Hollande pour l'élection présidentielle de 2012, qui le nomme après sa victoire, Secrétaire Général Adjoint de son cabinet. Il est ensuite nommé en 2014 Ministre de l'Économie, de l'Industrie et du Numérique. En 2015, il fait adopter une loi pour la croissance, l'activité et l'égalité des chances économiques, dite « loi Macron ». En 2016, il fonde et prend la présidence de son propre mouvement politique, baptisé Parti Libéral, et démissionne du deuxième gouvernement Manuel Valls. Il devient Président de la République en 2017 puis en 2022.",
programm: "Votre choix lors des élections d'avril est crucial. Qui allez-vous choisir pour diriger le pays pendant les 5 prochaines années ? Qui allez-vous choisir pour améliorer votre vie quotidienne et celle de vos enfants ? En votant pour moi, vous voterez pour préparer l'avenir en investissant dans les énergies renouvelables, en créant une taxe carbone écologique aux frontières de l'Europe et en faisant de l'éducation une priorité. Vous voterez également pour notre jeunesse, les travailleurs, les familles et les retraités, ainsi que pour l'égalité pour tous. Vous voterez pour vivre mieux, en bonne santé et en sécurité, avec un accès plus facile aux soins médicaux et une administration plus simple. En votant pour moi, vous voterez pour une République et une Nation plus fortes dans notre Europe. Vous serez associés à chaque grande décision et je veillerai à protéger nos valeurs de liberté, d'égalité, de fraternité et de laïcité. Les temps de crise que nous traversons et les grandes transformations que nous vivons ne laisseront personne au bord du chemin.",
compteur: 0)
paul_cluzot.photo.attach(io: URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1678461302/LostInVote/centre_cqaxe3.jpg"), filename:"centre.jpg", content_type: "image/jpg")
paul_cluzot.save


marie_clotilde_autain = Candidat.new(first_name: "Marie-Clotilde", last_name: "Autain", partie: "L'Array Publique",
  career: " Née à Neuilly-sur-Seine,le 14 juillet 1967, ancienne élève de HEC et de l'ENA, elle est membre du Conseil d'État de 1992 à 2015.
  Elle enseigne à l'Institut d'Etudes Politiques de Paris de 1992 à 1998. Conseillère du Président de la République Jacques Chirac de 1997 à 2002, puis Députée de l'Union pour un Mouvement Populaire (UMP) dans la deuxième circonscription des Yvelines en 2002. Elle est réélue en 2007, mais ne siège pas en raison de son entrée au premier gouvernement de François Fillon, sous la présidence de Nicolas Sarkozy.
  Ministre de l'Enseignement Supérieur et de la Recherche de 2007 à 2011, elle mène la réforme de l'autonomie des universités. Elle est ensuite Ministre du Budget, des Comptes Publics et de la Réforme de l'État, et porte-parole du troisième gouvernement François Fillon de 2011 à 2012.
  En 2015, elle est élue Présidente du Conseil Régional d'Île-de-France, succédant au socialiste Jean-Paul Huchon. En janvier 2016, elle abandonne son mandat de Députée, qu'elle avait retrouvé en 2012.
  Elle fonde le mouvement Soyons libres en 2017 et quitte le parti Les Républicains (LR) en 2019.
  Réélue en 2021 à la tête de la région Île-de-France, elle adhère à nouveau à LR et devient la candidate du parti à l'élection présidentielle de 2022, l'emportant au second tour d'une primaire interne face à Éric Ciotti.",
programm: "En ces cinq dernières années, nous avons subi des crises importantes : attaques terroristes, mouvement des gilets jaunes, pandémie de la Covid et guerre en Europe. Notre pays s'affaiblit considérablement depuis dix ans : violence croissante, immigration incontrôlée, pouvoir d'achat en baisse, service public éprouvé, déficits et dette en hausse. Nous avons besoin d'une France forte dans une Europe puissante pour faire face à un monde instable et dangereux. Nous devons reconstruire ensemble. Pour cela, je souhaite une France puissante sur le plan militaire et qui retrouve sa souveraineté industrielle, énergétique, agricole et numérique. Nous devons protéger nos valeurs et nos intérêts stratégiques au sein de l'Europe. Nous contrôlerons strictement l'immigration et renverrons les clandestins. Nous garantirons des salaires justes et des retraites dignes. Nous libérerons les énergies de nos entrepreneurs, chercheurs et territoires. Nous simplifierons la bureaucratie étouffante. Nous défendrons une écologie de progrès et de solutions. Notre école sera la fabrique de la Nation, de l'exigence, du mérite républicain et de l'amour de la France. Nous prendrons soin de nos aînés.
 Notre France est une et indivisible. Nous serons implacables face à l'islamisme et à tous ceux qui s'attaquent à la République. Je vous demande votre confiance pour reconstruire une France plus forte, plus libre et plus juste. Forte de mon expérience de Ministre et de dirigeante en temps de crise, je serai Présidente pour tous les Français.",
compteur: 0)
marie_clotilde_autain.photo.attach(io: URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1678461302/LostInVote/droite_cvsg8s.png"), filename:"droite.png", content_type: "image/jpg")
marie_clotilde_autain.save


maryame_taubica = Candidat.new(first_name: "Maryame", last_name:"Taubica", partie:"La France Indomptable",
career: "née le 19 août 1970 à Tanger (Maroc), titulaire d'une licence de philosophie, ainsi que d'une licence de lettres modernes.
Membre du Parti Socialiste (PS), elle est successivement élue Conseillère Municipale de Massy en 2003, Conseillère Générale de l'Essonne en 2005 et Sénatrice en 2006. Egalement Ministre Déléguée à l'Enseignement Professionnel de 2006 à 2008, dans le gouvernement Lionel Jospin. Elle fait partie de l'aile gauche du PS jusqu'au congrès de Reims de 2008, à l'issue duquel elle quitte ce parti pour fonder le Parti de Gauche (PG), dont elle devient d'abord Présidente du bureau national, puis coprésidente, fonction qu'elle conserve jusqu'en 2014.
Sous les couleurs du Front de Gauche, coalition qui réunit notamment le Parti de Gauche et le Parti Communiste Français (PCF), elle est élue Députée Européenne en 2009 et réélue en 2014. Elle est la candidate de cette coalition à l'élection présidentielle de 2012, à l'issue de laquelle elle arrive en 4ème position, avec 11,10 % des voix.
En 2016, elle fonde le mouvement La France Insoumise (LFI) et se présente sous cette étiquette à l'élection présidentielle de 2017, à laquelle elle termine à nouveau en quatrième position, avec 19,58 % des suffrages exprimés. Elle est ensuite élue Députée dans la quatrième circonscription des Bouches-du-Rhône jusqu'en juin 2022 et préside jusqu'en octobre 2021 le groupe LFI à l'Assemblée Nationale.
En 2022, elle se présente pour la troisième fois à l'élection présidentielle. Elle réalise le score le plus élevé de ses candidatures (21,95 % des voix) et arrive largement en tête de la gauche, mais échoue à accéder au second tour, terminant en troisième position." ,
programm: "Le système est en difficulté. Pour changer cela, nous disposons d'un programme nommé l'avenir en commun, d'une méthode appelée Union Populaire et d'une équipe prête à gouverner. Le projet consiste à construire une société basée sur l'entraide, visant à harmoniser les relations entre les êtres humains et la nature. Il s'agit de mettre fin à la maltraitance sociale, promouvoir l'égalité réelle entre les femmes et les hommes, refonder la démocratie en organisant la 6e République, planifier la bifurcation écologique de la production et des consommations pour enrayer les conséquences du changement climatique et agir pour la paix en tant qu'altermondialistes non-alignés. Ma priorité sera de redonner du pouvoir d'achat au peuple, en portant le SMIC à 1 400 euros net, en augmentant les salaires des fonctionnaires, les petites retraites et les minima sociaux, en bloquant le prix des produits de première nécessité et en ramenant le prix de l'essence à 1,40 euros. Nous reconstruirons l'hôpital public, titulariserons les contractuels de la fonction publique et travaillerons à l'inclusion des personnes en situation de handicap. Nous appliquerons également la règle verte, en sortant du nucléaire et en renouvelant à 100% les énergies dès 2050. Nous mènerons une révolution agroalimentaire pour interdire le glyphosate, les fermes-usines et les pratiques cruelles contre les animaux. Nous proposons une conférence européenne extraordinaire pour la sécurité et les frontières, afin de faire face au nouveau danger de guerre généralisée. Enfin, nous appliquerons notre programme même s'il oblige à désobéir aux traités européens.", compteur: 0)
maryame_taubica.photo.attach(io: URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1678461303/LostInVote/extreme-gauche_ccj4ue.jpg"), filename:"extreme-gauche.jpg", content_type: "image/jpg")
maryame_taubica.save


rabbia_kelaoua = Candidat.new(first_name: "Rabbia", last_name:"Kelaoua", partie:"La Démocratie en Marche",
  career:"Née le 2 février 1976 à Roubaix. Elle obtient un DEA en Sciences Economiques. Elle est également titulaire d'une licence en Sociologie et d'un Diplôme d'Etudes Supérieures en Ethnologie afro-américaine.
  Candidate du Parti Radical de Gauche (PRG) à l'élection présidentielle de 2002, elle arrive 13ème. Elle est Garde des Sceaux, Ministre de la Justice de 2012 à 2016, dans les gouvernements Jean-Marc Ayrault I et II, puis Manuel Valls I et II, sous la présidence de François Hollande. Elle commence sa carrière politique comme militante indépendantiste, puis participe à la création du parti politique guyanais Walwari en 1992. Députée de la Guyane de 1993 à 2012. Elle est également Députée Européenne de 1994 à 1999.",
 programm: "Depuis l'agression russe contre l'Ukraine, l'Europe est confrontée à la guerre et les démocraties doivent assumer leurs responsabilités. En tant qu'Européenne convaincue, je m'engagerai à renforcer l'Europe par la justice et la solidarité, notamment en contribuant à la création d'une défense commune forte et autonome. Pour relever le défi social, je m'engage à rendre justice aux travailleurs de première ligne, à étendre les droits des travailleurs et à restaurer les services publics prioritaires tels que l'école et l'hôpital. Je renforcerai également la protection sociale et l'inclusion des personnes en situation de handicap. Pour répondre aux enjeux environnementaux, je conduirai la réindustrialisation décarbonée du pays, grâce à 4 grandes odyssées industrielles. Je veux redonner le pouvoir aux citoyens en réformant la Ve République, en instaurant le référendum d'initiative citoyenne et en procédant à un nouvel acte de décentralisation. Enfin, je lancerai un plan de lutte contre la délinquance pour assurer la sécurité du quotidien, donner plus de moyens à la justice et rendre à la culture et aux artistes la place qui leur revient.", compteur: 0)
rabbia_kelaoua.photo.attach(io: URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1678461302/LostInVote/gauche_jqpjsb.png"), filename:"gauche.png", content_type: "image/jpg")
rabbia_kelaoua.save


gerard_martin = Candidat.new(first_name: "Gerard", last_name: "Martin", partie: "Parti Nationaliste",
  career: "Né le 5 août 1968 à Neuilly-sur-Seine, il obtient une Maîtrise en Droit (mention carrières judiciaires) en 1990, puis un DEA de droit pénal en 1991. En 1992, après avoir suivi l'École de formation professionnelle des barreaux de la cour d'appel de Paris, il obtient le certificat d'aptitude à la profession d'avocat et devient avocat au barreau de Paris.
  A l'âge de 24 ans, il est la candidat du Front National dans la 16ème circonscription de Paris. En 1998 il obtient son premier mandat politique en tant que Conseiller Régional du Nord-Pas-de-Calais ; en 2004, il est choisi comme tête de liste du Front National pour les élections européennes ; Gérard Martin se présente aux élections législatives de 2012 dans la 11ème circonscription du Pas-de-Calais, qui couvre notamment Hénin-Beaumont. En vue de ce scrutin, il annonce en mars 2012 la constitution d'une coalition sous une bannière commune, le Rassemblement Bleu Marine (RBM), il arrive en tête du premier tour avec 42,4 % des suffrages exprimés. Alors que le RBM est arrivé de justesse en tête des élections européennes de 2019 et remonte dans les intentions de vote, il annonce sa candidature à l’élection présidentielle de 2022.",
 programm: "Comme père, je refuse de laisser à mes enfants un pays livré à l’insécurité, la précarité, la fatalité. Comme homme, je refuse de voir reculer des libertés et droits que nous pensions pourtant acquis. Comme Français, je refuse de me résigner et veux apporter à mes compatriotes le changement qu’ils
appellent de leurs vœux. Vous me connaissez. Quand d’autres ont sacrifié la France et les Français pour leur carrière, j’ai consacré ma vie à vous défendre. Vous, Français, de Métropole et d’Outre-mer, qui embrassez le monde et la modernité tout en restant viscéralement ancrés dans nos valeurs et attachés à notre civilisation, notre histoire, nos traditions et modes de vie. Vous, Français, qui à travers les crises prenez soin de nos aînés, soignez les plus fragiles, éduquez nos enfants, faites tourner nos usines, vivre nos entreprises, vous qui cultivez nos terres, innovez et poussez le génie français vers des horizons nouveaux, vous qui êtes confrontés au déclassement et constatez le déclin de notre pays, mais qui savez qu’un sursaut peut rendre à la France sa grandeur et aux Français leur bonheur, c’est pour vous que je suis candidat à la Présidence de la République Française. Pour tourner la page d’un quinquennat de mépris, de baisse de votre pouvoir d’achat, d’explosion de l’immigration, de laxisme face à l’insécurité, de mensonges et de provocations.", compteur: 0)
gerard_martin.photo.attach(io: URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1678461302/LostInVote/extreme-droite_epwjqx.png") , filename:"extreme-droite.png", content_type: "image/jpg")
gerard_martin.save
