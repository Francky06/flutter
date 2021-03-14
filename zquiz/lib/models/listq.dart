import 'package:flutter/material.dart';
import 'package:zquiz/models/question.dart';

class Listpop {
  Question question;

  List<Question> listQuestions = [
    new Question("De quand date la toute première BD jamais publiée ?",
        (["1848", "1896", "1902", "1923"]), "1","", "donald.jpg"),

    new Question("Quel était le surnom de Rocky ?",
        (["Poings d'acier", "L'oeil du Tigre", "L'etalon Italien", "Balboa"]),
        "2","","donald.jpg"),

    new Question("Pourquoi surnomme-t-on les policiers des Poulets?",
        (["Car le 36 quai des orfèvres a été batie sur un marché aux volailles", "Car ils ont sauvés la plus grande usine de dindes ", "Car ils nous plument et se prennent pour des coqs", "Car Le directeur de la Police s' appelé Georges Poulailler"]),
        "0","", "donald.jpg"),

    new Question("En moyenne une cigarette prend combien de minutes de la vie d'un fumeur?",
        (["1 à 2", "2 à 4", "5 à 11", "+ de 15"]), "2", "", "donald.jpg"),

    new Question("Comment s’appelle le langage dans le jeu vidéo Les Sims ?",
        (["Soum Soum", "Simlish", "Simfast", "Simflouz"]),"1","","donald.jpg"),

    new Question("Combien coute le médicament le plus cher au monde, le Zolgensma ?",
        (["500 000 ", "1 million", "2 millions ", "2.5 millions"]),"2","","donald.jpg"),

    new Question("Quelle oeuvre est considérée comme le tout premier récit vampirique, bien avant Dracula de Bram Stoker ?",
        (["L’Étranger des Carpathes, de Karl Von Wachsmann", "Carmilla, de Sheridan Le Fanu", "La Morte amoureuse, de Théophile Gautier",
          "Frankenstein, de Mary Shelley "]),"0","","donald.jpg"),

    new Question("Selon le personnage de Perceval, dans la série d'Alexandre Astier Kaamelott, le Graal pourrait être…",
        (["un pot de confiture", "un bocal de cornichons", "un bocal à anchois", "une coupe de vin"]),"2","","donald.jpg"),

    new Question("Quel est le numéro de la maison des Simpsons?",
        (["42", "101", "666", "742"]),"3","","donald.jpg"),

    new Question("Quel X-men manipule l'énergie cinétique et utilise comme arme des cartes à jouer ?",
        (["Tornade", "Malicia", "Gambit", "Cyclope"]),"2","","donald.jpg"),

    new Question("A quelle vitesse doit aller la Delorean pour retourner vers le futur ?",
        (["2.21 gigawatts", "88 miles/heures", "88 km/heures", "299 792 458 m/secondes"]),"1","","donald.jpg"),

    new Question("Dans quelle ville se passe la série Breaking Bad ?",
        (["Baltimore", "Albuquerque", "Minneapolis", "Miami"]),"1","","donald.jpg"),

    new Question("Qui a dit: De grands pouvoirs impliquent de grandes responsabilités ?",
        (["Peter Parker", "Oncle Ben", "Alfred", "Batman"]),"1","","donald.jpg"),

    new Question("Quels animaux sont utilisés pour la partie de croquet dans Alice aux pays des merveilles ?",
        (["Castor et Poney", "Chauve-sourie et Pangolin", "Flament Rose et Herisson", "Heron et Taupe"]),"2","","donald.jpg"),

    new Question("Comment s'appelle l'un des animaux les plus stupides du monde ?",
        (["La loutre bigleuse", "Le kakapo", "Le paresseux", "La poule"]),"1","","donald.jpg"),

    new Question("Quel est le manga le plus vendu au monde ",
        (["One Piece", "Dragon Ball", "Naruto", "Golgo 13"]),"0","","donald.jpg"),

    new Question("De quand date la premiere parution de Naruto, sachant que l' animé est apparu 3 ans après?",
        (["1999", "2000", "2001", "2002"]),"0","","donald.jpg"),

    new Question("Que récompensent chaque année les Darwin Awards, crées aux États-Unis en 1993 ?",
        (["Les facons de mourir les plus idiotes", "Les découvertes scientifiques les plus insolites", "Les meilleurs variétés de pommes",
          "Le classement des espèces dominantes"]),"0","","donald.jpg"),

    new Question("Que signifie le terme Sakura en français ?",
        (["Rose", "Fleur", "Cerisier", "Petale"]),"2","","donald.jpg"),

    new Question(" Dans retour vers le futur comment s’appelle le bal du 12 novembre 1955 ?",
        (["La féerie dansante des sardines", "Le bal de Hill Valley", "La féerie dansante des sirenes", "Le bal dansant de Hill Valley"]),"2","","donald.jpg"),

    new Question(" En moyenne vous passez devant combien de Psychopathes par jour ?",
        (["1", "3", "5", "7"]),"3","","donald.jpg"),

    new Question(" De combien d' organes disposent les pieuvres?",
        (["1 coeur et 1 cerveau", "3 coeurs et 9 cerveaux", "2 coeurs et 4 cerveaux", "1 coeur et 2 cerveaux"]),"1","","donald.jpg"),

    new Question("Au Japon que veut dire tchin-tchin?",
        (["Santé", "Penis", "Poitrine", "Petit"]),"1","","donald.jpg"),

    new Question("Parmi ces 4 objets lequel ne fait pas parti des plus vendus au monde ?",
        (["La playstation", "L'iphone", "Les livres d' harry potter", "Le rubik's cube"]),"0","","donald.jpg"),

    new Question("Comment est testée la resistance de certaines parties des avions?",
        (["Avec un canon à poulets", "Avec un canon laser", "Avec des explosifs", "Avec des armes a feu"]),"0","","donald.jpg"),

    new Question("A quoi servent les Gold pills",
        (["pour bronzer", "comme rouge à levres", "pour chier de l'or", "pour reussir en bourse"]),"2","","donald.jpg"),

    new Question("Quelle combinaison de touches permet de restaurer un onglet qu' on vient de fermer ?",
        (["Ctrl + Maj + T", "Alt + f4", "Ctrl + Alt + Suppr", "Ctrl + z"]),"0","","donald.jpg"),

    new Question("D'ou vient l' expression attendre 107 ans?",
        (["La construction de notre dame de Paris a durer 107 ans", "C'est le temps exact de la guerre de 100 ans ",
          "Le record du monde de vieillesse etait à 107 ans", "C' est le temps d' un siecle"]),"0","","donald.jpg"),

    new Question("Quelle est la peinture ayant fait la vente la plus elevée, soit 450 millions?",
        (["Le cri ", "Salvator Mundi", "Les joueurs de cartes", "Nympheas en fleurs"]),"1","","donald.jpg"),

    new Question("Quel etait le surnom de Barack Obama pendant son adolescence, sachant qu'il était connu pour être un gros consommateur de cannabis",
        (["Barack OWeed", "Barack Oganja", "Barack OSmoke", "Barack Oshit"]),"1","","donald.jpg"),

    new Question("Quel est le point commun entre Albert Einstein, Gustave Flaubert et Steven Spielberg ??",
        (["Ils ont un Q.I supérieur à 135", "Ils sont juifs", "Ils sont dyslexiques", "Ils ont la meme nationalité"]),"2","","donald.jpg"),

    new Question("Le 1er avril 1957 La très sérieuse BBC a trollé la Grande Bretagne avec un reportage?",
        (["Sur la cueillette de spaghetti", "Sur une voiture volante", "Sur l' appariton d'un OVNI", "Sur une déclaration de la reine"]),"0","","donald.jpg"),

    new Question("Quand fut crée Netflix?",
        (["2012", "2003", "1997", "2008"]),"2","","donald.jpg"),

    new Question("Qui est l' homme le plus riche du monde en 2021?",
    (["Bill Gates", "Jeff Bezos", "Warren Buffet", "Elon Musk"]),"1","","donald.jpg"),

    new Question("Quand a été signalé le premier cas du virus, sachant qu'en France ce fut le 24 janvier 2020",
        (["Le 17 novembre 2019", "Le 19 novembre 2019", "Le 12 décembre 2019", "Le 25 decembre, joyeux noel"]),"0","","donald.jpg"),

    new Question("Quelle film a été le plus rentable au monde, avec env 2.5 milliards de benefices?",
        (["Titanic", "Avengers", "Jurassic world", "Avatar"]),"3","","donald.jpg"),

    new Question("Quel film n'a pas recu 11 oscars?",
        (["Titanic", "Ben hur", "West side story", "Le seigneur des anneaux : Le retour du roi"]),"2","","donald.jpg"),

    new Question("En quelle année fut crée Wikipedia?",
        (["1998", "2001", "2003", "2005"]),"1","","donald.jpg"),

    new Question("De quand date le premier long metrage de Walt Disney, Blanche-neige",
        (["1937", "1945", "1952", "1960"]),"0","","donald.jpg"),

    new Question("En quelle année Shigeru Miyamoto a crée Mario?",
        (["1980", "1981", "1983", "1987"]),"2","","donald.jpg"),

    new Question("L'oeuvre de Bansky qui s' autodetruit à Sotheby's à été adjugée à combien?",
        (["1 millions d' euros", "1.2 millions d' euros", "1.5 millions d' euros", "2 millions d' euros"]),"1","","donald.jpg"),

    new Question("Quelle est la video Youtube la plus vue avec 8.1 milliards de vue?",
        (["Despacito", "Shape on you", "Gangnam Style", "Baby Shark"]),"3","","donald.jpg"),

    new Question("Quelle était le prénom de notre premier ami Myspace?",
        (["Matt", "Tim", "Chris", "Tom"]),"3","","donald.jpg"),

    new Question("Quelle est le groupe de K-pop le plus connu?",
        (["Girls' Generation", "BTS", "Black Pink", "Red Velvet"]),"1","","donald.jpg"),

    new Question("Qui a réalisé Fight Club en 1999?",
        (["David Fincher", "David Lynch", "Christopher Nolan", "Quentin Tarantino"]),"0","","donald.jpg"),

    new Question("Comment est appelée une bouteille de Champagne de 15l?",
        (["Magnum", "Mathusalem", "Nabuchodonosor", "Midas"]),"2","","donald.jpg"),

    new Question("De quoi est composé le fameux code vert de Matrix",
        (["De chiffres", "De lettres", "De recettes de cuisine japonaise", "De signes chinois"]),"2","","donald.jpg"),

    new Question("Au Pays Bas une loi de 2015 permet :",
        (["De donner plus de 5g de cannabis par transaction", "De payer son moniteur d' auto école en nature",
          "La vente de drogue dure", "De faire de la publicite pour le cannabis"]),"1","","donald.jpg"),

    new Question("Quelle heroine de la pop culture à déjà fait la une de PlayBoy Magazine?",
        (["La mère de Cartman", "Marge Simpson", "Sakura", "Francine Smith"]),"1","","donald.jpg"),

    new Question("Au Japon le coq fait?",
        (["Cocorico", "Kokekoko", "Quiquiriqui", "Kikeriki"]),"1","","donald.jpg"),

    new Question("Que decouvre t-on en tapant 241543903 sur Google?",
        (["Des gens bourrés dans un caddie", "Des photobombs", "Des chèvres sur un éléphant ", "Des personnes mettant leur tete dans un congelateur"]),"3","","donald.jpg"),

    new Question("Combien de saveurs de Skittles existent-ils?",
        (["32", "70", "96", "150"]),"3","","donald.jpg"),

  ];
}


class Listgeo {
  Question question;

  List<Question> listQuestions = [

  new Question("Quelle est le PIB de la France en 2019?",
  (["env 2 010 Milliards", "env 2420  Miliards", "env 2 640 Milliards", "env 2850 Milliards"]),"1","","submarine.png"),

  new Question("Quelle est le montant de la dette publique de la France en 2018 ( soit 98.4% du PIB)?",
  (["env 2 315 Milliards", "env 2 100 Milliards", "env 2050 Milliards", "env 1950 Milliards"]),"0","","submarine.png"),

  new Question("Quelle est la capitale de Biélorussie?",
  (["Minsk", "Astana", "Sofia", "Prague"]),"0","","submarine.png"),

  new Question("Quelle est la capitale de la Moldavie?",
  (["Skopje", "Belgrade", "Varsovie", "Chisinau"]),"3","","submarine.png"),

  new Question("Quelle est la capitale de la Serbie?",
  (["Zagreb", "Belgrade", "Budapest", "Berlin"]),"1","","submarine.png"),

  new Question("Quelle est la capitale du Liechtenstein?",
  (["Londres", "Vaduz", "Vilnius", "Tirana"]),"1","","submarine.png"),

  new Question("Quelle est la capitale du Montenegro?",
  (["Vienne", "Nicosie", "Podgorica", "Pristina"]),"2","","submarine.png"),

  new Question("Quelle est la capitale de la Georgie?",
  (["Erevan", "Kiev", "Tbilissi", "Ljubljana"]),"2","","submarine.png"),

  new Question("Quelle est la capitale de de la Slovaquie?",
  (["Bucarest", "Budapest", "Bratislava", "Riga"]),"2","","submarine.png"),

  new Question("Depuis quand il n'y a pas eu une année sans mouvement social à la SNCF?",
  (["1969", "1947", "1984", "1972"]),"1","","submarine.png"),

  new Question("En quelle année Neil Armstrong a marché sur la Lune?",
  (["1958", "1962", "1967", "1969"]),"3","","submarine.png"),

  new Question("En quelle année fut crée, par Richelet, le premier dictionnaire francais?",
  (["1700", "1680", "1789", "1650"]),"1","","submarine.png"),

  new Question("A qui appartient le Groënland?",
  (["Au Canada", " Aux Usa", "Au Danemark","C' est un pays independant"]),"2","","submarine.png"),

  new Question("Quelle plante n'est pas un fruit?",
  (["l' haricot vert", "la tomate", "la courgette", "la rhubarbe"]),"3","","submarine.png"),

  new Question("En quelle année le franc fut-il mis en circulation?",
  (["1795", " 1789 ", "1757", "1801"]),"0","","submarine.png"),

  new Question("En quelle année l'euro fut-il mis en circulation?",
  (["1997", " 1998 ", "1999", "2000"]),"0","","submarine.png"),

  new Question("La Chine possède combien de % de la dette Americaine?",
  (["9%", " 13% ", "17%", "20%"]),"2","","submarine.png"),

  new Question("En quelle année la Russie a vendu l' Alaska pour 7.2 millions de dollars?",
  (["1818", "1867", "1900", "1666"]),"1","","submarine.png"),

  new Question("De quelle couleur n'a jamais été peinte la Tour Eiffel?",
  (["brun", "jaune", "vert", "rouge"]),"2","","submarine.png"),

  new Question("En quelle année fut remis le premier prix Nobel?",
  (["1892", "1895", "1900", "1901"]),"3","","submarine.png"),

  new Question("On dit attendre des lustres, mais combien vaut un lustre?",
  (["1 an", "3 ans", "5 ans", "7 ans"]),"2","","submarine.png"),

  new Question("Pourquoi le seul Japonais qui avait survécu au Titanic a perdu son emploi ??",
  (["Parce qu'il est devenu une star grâce à cet accident", "Parce qu'il a été considéré comme un dieu pour avoir survécu",
  "Parce qu'il a été traité de lâche pour ne pas être mort avec les autres passagers", "Parce qu'il est devenu extrement riche"]),"2","","submarine.png"),

  new Question("Pourquoi L' Inde déclara forfait lors de la coupe du monde de 1950?",
  (["Car l' équipe ne comptait pas assez de joueurs", "Car ils voulaient jouer pieds nus", "Car les relations diplomatiques étaient mauvaises",
  "Car ils sont tous tombés malades"]),"1","","submarine.png"),

  new Question("Quelle fut le premier pays a autorisé le droit de vote des femmes, en 1893?",
  (["La France", "La Suede", "La Nouvelle Zelande", "La Finlande"]),"2","","submarine.png"),

  new Question("Combien de francais croient que la terre est plate?",
  (["-2%", "3% à 5%", "7% à 9%", "+10%"]),"2","","submarine.png"),

  new Question("En quelle année les animaux sont devenus des êtres doués de sensibilités pour le code civil, sachant qu' avant ils etaient considerés comme des biens meubles?",
  (["1968", "1984", "2003", "2015"]),"3","","submarine.png"),

  new Question("Quelle ville est la plus peuplée au monde, avec 37 millions d' habitants, sachant qu' en France nous sommes env 67 millions?",
  (["Tokyo", "Djakarta", "Mexico", "New delhi"]),"0","","submarine.png"),

  new Question("En quelle année fut déclaré l' independance des Etats Unis?",
  (["1776", "1789", "1792", "1802"]),"0","","submarine.png"),

  new Question("En france il est toujours interdit?",
  (["d' appeler son cochon Napoléon", "que les parisiennes portent des pantalons", "cracher par terre", "pour une femme de s' habiller en homme"]),"0","","submarine.png"),

  new Question("En France, en 1912 une tombola un peu spécial a été organisée, quels lots étaient à gagner?",
  (["des enfants", "des bébés", "des animaux", "des femmes"]),"1","","submarine.png"),

  new Question("En quelle année furent autorisés les coffees shop en Hollande?",
  (["1976", "1982", "1996", "2004"]),"0","","submarine.png"),

  new Question("Avant quelle année les enfants pouvaient encore boire de l' alcool à la cantine?",
  (["1956", "1962", "1964", "1968"]),"0","","submarine.png"),

  new Question("Depuis 2013, combien y-a-t'il de pays dans l' Union Européenne?",
  (["25", "26", "27", "28"]),"3","","submarine.png"),

  new Question("Dans quelle ville indienne peut on trouver le Taj Mahal?",
  (["Bombay", "Agra", "New Delhi", "Calcutta"]),"1","","submarine.png"),

  new Question("Quel est le fleuve le plus long au monde?",
  (["L' Amazone", "L' Euphrate", "Le Nil", "Le Mississippi"]),"0","","submarine.png"),

  new Question("A combien est estimée la population chinoise en 2019?",
  (["1 milliards", "1.2 millards", "1.4 milliards", "1.6 milliards"]),"2","","submarine.png"),

  new Question("La Chute du mur de Berlin a eu lieu en quelle année?",
  (["1981", "1984", "1986", "1989"]),"3","","submarine.png"),

  new Question("Quel est le plus vieil indice boursier au monde ?",
  (["Le Dow Jones", "Le Nasdaq", "Le Cac40", "Le Dax"]),"0","","submarine.png"),

  new Question("En quelle année fut crée le Bitcoin?",
  (["2007", "2009", "2010", "2011"]),"1","","submarine.png"),
    
  ];
}

class Listcitations {
  Question question;

  List<Question> listQuestions = [

  new Question("Qui a dit : Moi j’ai mis 2,5 millions de personnes dans la rue quand j’ai fait la réforme des retraites… Macron est un petit joueur?",
  (["François Hollande", "Francois fillon", "Nicolas Sarkozy", "Emmanuel Valls"]),"1","","cake.png"),

  new Question("Qui a dit : J’ai pas l’habitude d’être seul. On arrive chez le patron en groupe, on séquestre en groupe?",
  (["Jean Luc Melenchon", "Alexis Corbiere", "Philippe Poutou", "Olivier Besancenot"]),"2","","cake.png"),

  new Question("Qui a dit : Le vol des portables à l’arraché. Ca n’existait pas avant que les portables existent?",
  (["Nadine Morano", "Valerie Pecresse", "Sibeth Ndiaye", "Rachida Dati"]),"0","","cake.png"),

  new Question("Qui a dit : Ceux qui sont en réanimation à cause du Coronavirus sont ceux qui n’ont pas respecté le confinement?",
  (["Alexandre Benala", "Pascal Praud ", "Eric Zemmour", "Didier Lallement"]),"3","","cake.png"),

  new Question("Qui a dit : Les femmes salariées de Gad ( un abattoir ) , sont pour beaucoup des illettrés?",
  (["Macron", "Valls", "Castaner", "Fillon"]),"0","","cake.png"),

  new Question("Qui a dit : On met un pognon de dingue dans les minimas sociaux?",
  (["Sarkozy", "Macron", "Merkel", "Trump"]),"1","","cake.png"),

  new Question("Qui a dit : Il n'est pas question de revenir à l'ancienne formule du Lévothyrox (...) Les effets secondaires vont s'estomper avec le temps?",
  (["Olivier Veran", "Roseline Bachelot", "Agnes Buzyn", "Xavier Bertrand"]),"2","","cake.png"),

  new Question("Qui a dit : Je sais pas si quelqu'un prend de la cocaïne dans la salle. Mais c'est terrible. C'est un engrenage. Tu prends 1 gramme, 2 grammes et pique et pique et colegram?",
  (["JC Van Damme", "Jean luc Delarue", "Thierry Ardisson", "Jawad Boudaoud"]),"3","","cake.png"),

  new Question("Qui a dit : Qui imagine un seul instant le général de Gaulle mis en examen, en parlant de Sarkozy?",
  (["E.Macron", "F.Fillon", "F.Hollande", "S.Royal"]),"1","","cake.png"),

  new Question("Qui à twitté : Ce serait quand même dommage d’aller en prison avant Fillon?",
  (["Nicolas Sarkozy", "Philippe Poutou ", "Patrick Balkany", "Jerome Cahuzac"]),"1","","cake.png"),

  new Question("Qui a dit : Un ticket de métro, ça doit bien coûter 4euros?",
  (["Jean Francois Copé", "Myriam El Khomri", "Nathalie Kosciusko-Morizet", "Christian Estrosi"]),"2","","cake.png"),

  new Question("Qui a dit : La moitié du nuage d’ozone qui sévit dans la région parisienne est d’importation anglaise et allemande ?",
  (["Roselyne Bachelot", "Nadine Morano", "Cecile Duflot", "Anne Hidalgo"]),"0","","cake.png"),

  new Question("Qui a dit : Même quand je ne dis rien, cela fait du bruit?",
  (["N.Sarkozy", "S.Royal", "C.Castaner", "JL.Melenchon"]),"1","","cake.png"),

  new Question("Qui a dit : Je ne suis candidat à rien?",
  (["N.Sarkozy", "E.Macron", "C.Castaner", "JL.Melenchon"]),"0","","cake.png"),

  new Question("Qui a dit : Pour faire face à la hausse du prix du pétrole, je conseille aux Français de faire du vélo?",
  (["Emmanuel Macron", "Chistine Lagarde", "Christophe Castaner", "Eric Ciotti"]),"1","","cake.png"),

  new Question("Qui a dit en 2009 : Le vrai changement au PS, ce serait de gagner?",
  (["Francois Hollande", "Segolene Royal", "Nicolas Hamon", "Bertrand Delanoé"]),"3","","cake.png"),

  new Question("Qui a dit : J'ai inspiré Obama, et ses équipes m'ont copiée ».",
  (["N.Sarkozy", "F.Fillon", "F.Hollande", "S.Royal"]),"3","","cake.png"),

  new Question("Qui disait en 2010 : « Je suis l’homme le plus honnête du monde »?",
  (["Cahuzac", "Balkany", "Sarkozy", "Estrosi"]),"1","","cake.png"),

  new Question("Qui a dit : Nous sommes tous des immigrés ; seule notre date d’arrivée change?",
  (["Jean Louis Borloo", "Gandhi", "Le Pape ", "Jesus"]),"0","","cake.png"),

  new Question("Qui a dit : Pourquoi démissionner quand on est innocent ?",
  (["J.Cahuzac", "F.Fillon", "N.Sarkozy", "B.Tapie"]),"0","","cake.png"),

  new Question("Qui a dit :  Mon intelligence est un obstacle » ?",
  (["Christine Lagarde", "Bruno Lemaire", "Nicolas Sarkozy", "Emmanuel Macron"]),"1","","cake.png"),

  new Question("Qui a dit : Je pense donc je suis ?",
  (["René Descartes", "Jean Jacques Rousseau", "Socrate", "Jean Paul Sartre"]),"0","","cake.png"),

  new Question("Qui a dit : Connais-toi toi-même ?",
  (["Epicure", "Platon", "Socrate", "Aristote"]),"2","","cake.png"),

  new Question("Qui a dit : Je sais que je ne sais rien ?",
  (["Platon", "Socrate", "Voltaire", "Confucius"]),"1","","cake.png"),

  new Question("Qui a dit : Sortir et rencontrer sont deux verbes en voie de disparition ?",
  (["Bernard Werber", "Michel Onfray", "Amelie Nothomb", "Touria Uakkas"]),"3","","cake.png"),

  new Question("Qui a dit : On est pas serieux quand on a 17 ans ?",
  (["Arthur Rimbaud", "Jean Jacques Rousseau", "Sacha Guitry", "Voltaire"]),"0","","cake.png"),

  new Question("Qui a dit : Il est hélas devenu evident aujourd'hui que notre technologie a dépassé notre humanité?",
  (["Hubert Reeves", "Albert Einstein", "Stephen Auwking", "Charles Darwin"]),"1","","cake.png"),

  new Question("Qui a dit : Si ceux qui disent du mal de moi savaient exactement ce que je pense d'eux, ils en diraient bien davantage?",
  (["Martin Luther King", "Jean Jacques Rousseau", "Sacha Guitry", "Coluche"]),"2","","cake.png"),

  new Question("Qui a dit : Il ne faut jamais dire jamais ?",
  (["Louis XIV", "Henri III", "Charles X", "Napoléon III"]),"3","","cake.png"),

  new Question("Qui a dit : Aimer est le grand point, qu'importe la maîtresse ? Qu'importe le flacon, pourvu qu'on ait l'ivresse ?",
  (["Alfred de Musset", "Guillaume Apollinaire", "Albert Camus", "Sigmund Freud"]),"0","","cake.png"),

  new Question("Qui a dit : Le hasard, c'est Dieu qui se promène incognito?",
  (["Hubert Reeves", "Albert Einstein", "Stephen Auwking", "Charles Darwin"]),"1","","cake.png"),

  new Question("Qui a dit : L' état c' est moi?",
  (["Louis XIV", "Nicolas Sarkozy", "Emmanuel Macron", "Napoléon III"]),"0","","cake.png"),

  new Question("Qui a dit : Un peuple prêt à sacrifier un peu de liberté pour un peu de sécurité ne mérite ni l'une ni l'autre, et finit par perdre les deux ?",
  (["Karl Marx", "Benjamin Franklin", "Abraham Lincoln", "Emmanuel Kant"]),"1","","cake.png"),

  new Question("Qui a dit : Un seul être vous manque et tout est dépeuplé ?",
  (["Jean Paul Sartre", "Alfred de Musset", "Alphone de Lamartine", "Denis Diderot"]),"0","","cake.png"),

  new Question("Qui a ecrit La Peste?",
  (["Albert Camus", "Alfred de Musset", "Victor Hugo", "Denis Diderot"]),"0","","cake.png"),

  new Question("Qui a ecrit Le rouge et le noir?",
  (["Stendhal", "Marguerite Duras", "Romain Gary", "Louis Ferdinand Celine"]),"0","","cake.png"),

  new Question("Qui a dit: Il y a deux histoires : l'histoire officielle, menteuse, qu’on enseigne, puis l'Histoire secrète, où sont les véritables causes des événements?",
  (["André Gide", "Voltaire", "Honoré de Balzac", "Winston Churchill"]),"2","","cake.png"),

  new Question("Qui a dit : A vaincre sans peril, on trimphe sans gloire?",
  (["Paul Verlaine", "Georges Sand", "Arthur Rimbaud", "Pierre Corneille"]),"3","","cake.png"),

  new Question("Qui a dit : Les Francais sont des veaux?",
  (["Charles de Gaulle", "Francois Mitterrand", "Valery Giscard d'Estaing", "Georges Pompidou"]),"0","","cake.png"),

  new Question("Qui a dit :  Si quelqu'un t'a offensé, ne cherche pas à te venger. Assieds-toi au bord de la rivière et bientôt tu verras passer son cadavre?",
  (["Geronimo", "Confucius", "Lao-Tseu", "Sun Tzu"]),"2","","cake.png"),

  new Question("Qui a dit : Il n’y a pas de limites. Il y a des niveaux seulement, et tu ne dois pas en rester là, il faut aller au-delà. Si cela doit te tue, que cela te tue. Un homme doit toujours dépasser son niveau?",
  (["Jet Li", "Bruce Lee", "Ip Man ", "Jean Claude Van Damme"]),"1","","cake.png"),

  new Question("Qui a dit : Selon les statistiques, il y a une personne sur cinq qui est déséquilibrée. S'il y a 4 personnes autour de toi et qu'elles te semblent normales, c'est pas bon?",
  (["Coluche", "Jean Claude Van Damme", "Laurent Baffie", "Sacha Guitry"]),"1","","cake.png"),

  new Question("Qui a dit : Un changement est toujours provoqué par des personnes ordinaires qui font des choses extraordinaires?",
  (["Barack Obama", "Benjamin Franklin", "Jules Cesar", "Karl Marx"]),"0","","cake.png"),

  new Question("Qui a dit : Si la population comprenait le système bancaire, je crois qu'il y aurait une révolution avant demain matin?",
  (["James de Rothschhild", "Jerome Kerviel", "Warren Buffet", "Henry Ford"]),"3","","cake.png"),

  new Question("Qui a dit : Une banque vous prête un parapluie quand il fait beau et vous le reprend quand il pleut?",
  (["Gilbert Choulet", "Jean-Jacques Rousseau", "George Bernard Shaw", "Roland Topor"]),"2","","cake.png"),

  ];
}

class Listdivers {
  Question question;

  List<Question> listQuestions = [

    new Question("Quel est le pseudonyme de l'inventeur du Bitcoin, qui atteignit en mars 2021 les 60 000 dollars?",
        (["Satoshi Nakamoto", "Vitalik buterin ", "Hal Finney", "Charlie Lee"]),"0","","game.png"),


    new Question("Quelle femme actrice d' Hollywood fut à l'origine du Wifi en 1942 ",
        (["Jane Fonda", "Ava Gardner", "Hedy Lamarr", "Audrey Hepburn"]),"2","","game.png"),


    new Question("Qui est le créateur du Système Android?",
        (["Andy Rubin", "Steve Wozniak", "Jake Wharton", "Paul Smith"]),"0","","game.png"),


    new Question("Qui a découvert la Penicilline en 1929?",
        (["Louis Pasteur", "Alexander flemming", "Charles Chamberland", "Alexandre Yersin"]),"1","","game.png"),


    new Question("Qui a inventé le World Wide Web dans les années 90?",
        (["Timoty John Berners-Lee", "Ray Tomlinson", "Vint Cerf", "Robert Elliot Kahn"]),"0","","game.png"),


    new Question("Qui est l'inventrice du Camembert, recette héritée de sa mère, Marie-Catherine Fontaine, en 1791?",
        (["Patricia petit", "Monique camembert", "Suzanne Jolie", "Marie Harel"]),"3","","game.png"),


    new Question("Qui est l' inventeur de L' AK en 1947?",
        (["Mikhail Kalachnikov", "Dimitri Kalach", "Poutine Nikov", " Boris Kalachnikov"]),"0","","game.png"),


    new Question("Quelle femme a inventé le soutien gorge en 1889 sous le nom de « Bien-Être ».?",
        (["Andréa Courtin", "Samantha Bras", "Anne Cardin", "Herminie Cadolle"]),"3","","game.png"),


    new Question("Qui est l' inventeur de La machine à calculer?",
        (["Alan Turing", "Blaise Pascal", "Leonardo Fibonacci", "Pythagore"]),"1","","game.png"),


    new Question("Quel francais a inventé La carte à puce en 1974?",
        (["Pierre Court Beuvois", "Roland Moreno", "Jean reno", "Lionel CéBait"]),"1","","game.png"),


    new Question("Qui a inventé L' imprimerie vers 1450, avec un procedé d' impression par pressage ",
        (["Patrick Bell", "Eric Gardner", "Johannes Gutenberg", "Louis Hepwatch"]),"2","","game.png"),


    new Question("Quand fut crée Apple par Steve Jobs, Steve Wozniak et Ronald Wayne?",
        (["1er avril 1976", "11 novembre 1972", "25 decembre 1970", "14 juillet 1975"]),"0","","game.png"),


    new Question("Qui a crée Google en 1998?",
        (["Richard Endrix et Erlich Bachman ", "Larry Page et Sergey Brin", "Jared Dunn et Big Head", "Gavin Belson et Tom Hardy"]),"1","","game.png"),


    new Question("Qui ont inventé Instagram, et vendu celle ci pour 1 milliard de dollars en 2012, sachant qu' aujourdh'hui elle en vaudrait 100?",
        (["Michel Krieger et Kevin Systrom", "Jack Dorsey Tim Dawson", "Mark zuckerberg et Evan Spiegel", "Brandon et Alexander Gram "]),"0","","game.png"),


    new Question("Qui est l'inventeur du Téléphone portable en 1973?",
        (["Martin Poor", " Franck Martins ", "Sheldon Cooper", "Martin Cooper"]),"3","","game.png"),


    new Question("Qui sont Les inventeurs du papier toilette, invention datant du 2e siècle avant JC ?",
        (["Les Anglais", "Les Indiens", "Les Francais", "Les Chinois"]),"3","","game.png"),


    new Question("Qui a peint L' ecole d' Athenes à partir de 1508?",
        (["Leonard de Vinci", "Michel Ange ", "Perugin", "Raphaël"]),"3","","game.png"),


    new Question("Qui est l' inventeur francais du Parapluie pliant en 1705 ?",
        (["Jean Emar", "Jean Marius", "Paul Parapluie", "Nicolas umbrella"]),"1","","game.png"),


    new Question("Qui est le créateur de Coca-cola, sachant qu'il a revendu sa marque pour 2300 dollars dans les années 1890?",
        (["Angelo Mariani", "John S.Pemberton", "Albert Niemann", "Friedrich Wohler"]),"1","","game.png"),


    new Question("Qui à l’âge de 12 ans a crée son propre jeu vidéo, nommé Blastar, qu’il a revendu ensuite pour 500 dollars à un éditeur?",
        (["Atari-San", "Elon Musk", "Bill Gates", "Steve Jobs"]),"1","","game.png"),


    new Question("Qui a peint La Cène?",
        (["Michelangelo", "Leonard De Vinci", "Raphael", "Carravagio"]),"1","","game.png"),


    new Question("Qui est le créateur de One Piece?",
        (["Eiichiro Oda", "Masashi Kishimoto", "Takao Saito", "Akira Toriyama"]),"0","","game.png"),


    new Question("Qui a peint l' Ecole d' Athenes ?",
        (["Raphael", "Leornard de Vinci", "Michel Ange", "Le Greco"]),"0","","game.png"),


    new Question("Qui a peint la Création d'Adam entre 1508 et 1512?",
        (["Raphael", "Leornard de Vinci", "Michel Ange", "Van Gogh"]),"2","","game.png"),


    new Question("Qui a peint La jeune fille à la perle?",
        (["Le Caravage", "Leornard de Vinci", "Matisse", "Johannes Vermeer"]),"3","","game.png"),


    new Question("Qui a peint La ronde de nuit?",
        (["Van Gogh", "Claude Monet", "Michel Ange", "Rembrandt"]),"3","","game.png"),


    new Question("Qui a peint La nuit étoilée en 1889?",
        (["Van Gogh", "Pablo Picasso", "Gauguin", "Johannes Vermeer"]),"0","","game.png"),


    new Question("Qui a peint Le cri?",
        (["Paul cezanne", "Léornard de Vinci", "Edvard Munch", "Johannes Vermeer"]),"2","","game.png"),


    new Question("Qui a peint Les nymphéas?",
        (["Edouard Manet", "Claude Monet", "Gustave Courbet", "Salvador Dali"]),"0","","game.png"),


    new Question("Qui a peint Les époux Arnolfini?",
        (["Gustave Klimt", "Jan Van Eyck", "Vassily Kandinsky", "Johannes Vermeer"]),"3","","game.png"),


    new Question("Qui a peint Guernica en 1937?",
        (["Matisse", "Pablo Picasso", "Eugene Delacroix", "Johannes Vermeer"]),"1","","game.png"),


    new Question("Qui a peint Le Baiser?",
        (["Rembrandt", "Gustave Klimt", "Michel Ange", "Edgar Degas"]),"1","","game.png"),


    new Question("Qui a peint La persistance de la mémoire?",
        (["Gustave Courbet", "Salvador Dali", "Camille Pissaro", "Amédéo Modigliani"]),"1","","game.png"),


    new Question("Qui a peint American Gothic?",
        (["Rembrandt", "Leornard de Vinci", "Grant Wood", "Rene Magritte"]),"2","","game.png"),


    new Question("Qui a peint La terrasse du café?",
        (["Francisco de Goya", "Henri Matisse", "Van Gogh", "Paul Cezanne"]),"2","","game.png"),


    new Question("Qui a peint La naissance de Vénus en 1845?",
        (["Amedeo Modigliani", "Leornard de Vinci", "Sandro Botticelli", "Joan Miro"]),"2","","game.png"),


    new Question("Qui a peint Le bal du moulin?",
        (["Fernand Leger", "Georges Seurat", "Pierre Auguste Renoir", "Joan Miro"]),"2","","game.png"),


    new Question("Qui a peint Le jardin des delices?",
        (["Marc Chagall", "Georges Braque", "Edgar Degas", "Jerome Bosch"]),"3","","game.png"),


    new Question("Qui a peint La Madone Sixtine?",
        (["Raphael", "Leornard de Vinci", "Michel Ange", "Sandro Botticelli"]),"0","","game.png"),


    new Question("Qui a peint La danse?",
        (["Paul Gauguin", "Henri Matisse", "Paul Cezanne", "Johannes Vermeer"]),"1","","game.png"),


    new Question("Qui a peint Le déjeuner sur l'herbe?",
        (["Paul Klee", "Robert Delaunay", "Edouart Manet", "Claude Monet"]),"2","","game.png"),


    new Question("Qui a peint le logo de Chupa Chups?",
        (["Salvador Dali", "Jean-Michel Basquiat", "René Magritte", "Andy Warhol"]),"0","","game.png"),


    new Question("Qui a inventé Le Téléphone en 1876?",
        (["Graham Bell", "Charles Bourseul", "Benjamin Franklin", "Alan Turing"]),"0","","game.png"),


    new Question("Qu' elle francaise a recu le prix Nobel d' économie en 2019?",
        (["Rohini Pande", "Esther Duflo", "Rema Hanma", "Pascaline Dupas"]),"1","","game.png"),


    new Question("Qui a inventé La dynamite en 1866?",
        (["Georges TeNeT", "Paul Dynamite", "Albert Plosion", "Alfred Nobel"]),"3","","game.png"),


    new Question("Qui a inventé Le préservatif?",
        (["Goodyear", "Michelin", "Dunlop", "Pirelli"]),"0","","game.png"),



  ];
}