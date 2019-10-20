# MONITORING-AUDIO-DE-RESEAUX-ET-SYSTEMES
MONITORING-AUDIO-DE-RESEAUX-ET-SYSTEMES


# **Monitoring audio de réseaux et systèmes** 

### Before we start:

All the related codes and programs are on my [Github](<https://github.com/Lynnluxu/MONITORING-AUDIO-DE-RESEAUX-ET-SYSTEMES>).

### Remerciements

Tout d’abord, nous tenons tout particulièrement à remercier monsieur *Arthur PATE* qui nous a suivi tout au long du projet.
 Monsieur *PATE* nous a fourni les clés pour comprendre et appréhender le sujet de la meilleure manière qui soit. Son expertise nous a permis d’améliorer au fur et à mesure du temps notre prototype jusqu’à arriver à un résultat propre et satisfaisant.

Nous tenons aussi à remercier les étudiants qui ont accepté de répondre à notre sondage pour ainsi savoir ce qu’il serrait intéressant de monitorer suivant les besoins de chacun.


### Introduction

Nos environnements de travail, la plupart du temps informatisés, nous soumettent à une quantité sans cesse croissante d'informations constamment changeantes. Il est crucial de diminuer la surcharge cognitive imposée afin d'améliorer l'efficacité et le confort des utilisateurs.

Il existe une variété de logiciels qui peuvent être utilisés pour évaluer l’état de votre ordinateur. On peut tout trouver, des simples afficheurs de texte aux graphiques en temps réel ou encore aux graphiques de couleur 3D pour vous aider à diagnostiquer des problèmes de votre système informatique tout en transmettant des informations par des sons.

Vers 1998, cette fonctionnalité a été créée ! 
Peep, the network Auralizer a été développé pour remplacer le monitoring visuel et fournir un environnement sonore afin d'aider les administrateurs réseaux à déterminer quelle est le problème et où il se trouve. En utilisant des effets sonores qui correspondent à un événement spécifique, l’administrateur réseaux est capable de reconnaître immédiatement la situation et d’agir en conséquence.

Pure Data utilise une méthode d’ajout de sons pour générer un environnement sonore similaire, avec des fonctionnalités sonores, et crée une harmonie en fonction de la charge du système. Vous découvrirez dans ce projet comment, à l’aide de scripts pure-data nous sommes capables d’interpréter ce qu’il se passe en temps réel sur notre ordinateur.



## Le projet



### Définition :

 Notre projet s’articule autour d’un procédé fondamental : la sonification. 
 C’est la représentation et l’émission de données sous forme de signaux acoustiques non verbaux. 
 Pour illustrer, prenons le cas d'un informaticien devant surveiller l'activité hardware de son ordinateur, et/ou le bon fonctionnement du réseau informatique administré, autrement dit ce sont des processus informatiques. Les outils proposés actuellement pour s’informer sur ces processus se fondent sur une présentation visuelle (graphiques, tableaux, ...) des informations, présentant certes l'avantage de paraître instinctive, mais ayant le désavantage de surcharger la modalité perceptive visuelle et de nécessiter l'attention constante de l'utilisateur. En revanche, l'utilisation de la modalité auditive (présenter l'information sous forme de son et non d'image, c'est-à-dire « sonifier ») pourrait permettre de soulager la modalité visuelle : certaines informations peuvent être transmises sous forme de son.
 Il suffirait ainsi à notre informaticien d’apprendre la signification des sons que nous lui proposons pour ainsi reconnaître grâce à l’audition ce qu’il se passe en temps réel sur son ordinateur, lui permettant ainsi d’accomplir ses tâches sans devoir constamment jeter un coup d’œil sur la manière dont se porte son outil de travail.



### Notre organisation

![](https://ws4.sinaimg.cn/large/006tNc79gy1g263j5eqpoj30h90gv76x.jpg)



### Nos objectifs

Les objectifs de ce projet étaient multiples. Tout d’abord, la partie la plus importante qui constitue la base de notre développement était la suivante : 

è La récupération d’informations internes à l’ordinateur et l’envoie de ces dernières dans le logiciel Pure Data afin de générer ou de modifier un son.

Ensuite, nous nous sommes vite rendu compte de l’importance de l’expérience utilisateur et du confort que doit ressentir ce dernier en utilisant notre programme. En effet un bruit simple continu et variant linéairement en fonction d’information peut vite être désagréable à écouter. C’est pourquoi nous avons posé ce deuxième objectif :

è Le développement de plusieurs fonctionnalités permettant de traiter différemment ces informations pour en ressortir un son agréable (synthèse plus complexe, sampling).

Enfin, le dernier objectif se s’est rajouté au fil du projet comme une « ouverture » et une amélioration, toujours dans la problématique du confort de l’utilisateur :

è La mise en place d’une interface utilisateur pour simplifier l’utilisation du programme, se basant sur le principe des synthétiseurs modulaires (plug and play) et l’implémentation d’un programme simple de musique générative.

###  

### L’évolution du projet

Faire face à un projet qui s’étale sur plusieurs semaines nécessite une organisation et un déroulé précis afin de parvenir à la résolution de nos objectifs en minimisant les erreurs de parcours. Pour ce faire, nous avons séparé notre temps de travail en plusieurs parties, plus ou moins correspondantes aux semaines. En effet, la première semaine a surtout été utilisée pour bien cerner le sujet, pour comprendre les objectifs, et pour faire des recherches en vue du travail que nous allions accomplir. Nous nous sommes ensuite séparé les taches en fonction des domaines et des envies de chacun. Une équipe a donc migré vers la partie script et récupération des informations, tandis que l’autre s’est concentrée sur la partie son, et sur le traitement de ces informations. Ces deux tâches ont constitué une partie importante du travail réalisé. Nous avons ensuite cherché des pistes d’ouverture, afin d’élargir les compétences et le confort utilisateur de notre programme avec notamment la musique générative ou encore l’interface utilisateur.



### Nos choix

Notre projet étant sur un projet de recherches où nous sommes les premiers à nous aventurer, nous étions totalement libres de décider comment nous allions le réaliser et avec quoi.

Concernant la sonification des informations, notre choix s’est porté sur pure-data. Hubert et Malo maitrisant tous les deux pure-data à des niveaux différents, c’était un gros gain de temps.

De plus, cela était totalement en accord avec notre choix d’utiliser des scripts pour monitorer l’ordinateur étant donné que pure-data possède des boîtes permettant de lire et comprendre ces scripts. 

Par la suite, nous nous sommes tournés vers l’utilisation d’Ubuntu pour l’ensemble du projet. Notre choix s’est fait en partie de par l’utilisation des scripts. Bien que nous ayons pour objectifs d’avoir un projet qui se veut multi-plateforme, nous avons décidé de commencer sur un système d’exploitation basé sous Linux car nous avions à notre disposition énormément de ressources là-dessus (internet) et qu’il était aussi plus simple d’aller récupérer des informations sur cet OS.

Aucun de nous n'étant utilisateur Linux, nous avons d'abord utilisé des machines virtuelles pour utiliser Ubuntu, mais celle-ci étant très instable, nous avons ensuite travaillé en dualboot.

On peut voir sur la *figure 1* un schéma simplifié du fonctionnement du projet.

![Figure 1 : Fonctionnement du projet](https://ws1.sinaimg.cn/large/006tNc79gy1g263y4b2emj30pq0figna.jpg)  

 

## Partie Scripting

### Familiarisation avec Ubuntu

Afin de nous familiariser avec le système d’exploitation de type UNIX nous avons téléchargé sur nos machines virtuelles Ubuntu. Puis pour avoir de meilleures performances (répartition de la mémoire et de la RAM), nous avons effectué un dual boot qui nous a permis de travailler avec une meilleure stabilité et de meilleures performances pour ensuite utiliser Pure Data.

En effet le dual boot nous a donné l’opportunité de pouvoir démarrer un système d’exploitation autre que celui initialement installé sur nos ordinateurs. L’ordinateur de Lu nous a été également d’une grande aide car Ubuntu y était déjà installé. Ci-dessous un exemple d’écran d’ordinateur avec un terminal ouvert sous Ubuntu (*figure 2*).

![figure 2](https://ws3.sinaimg.cn/large/006tNc79gy1g2642irhzkj30p60is75t.jpg)

L’interface d’Ubuntu est assez instinctive et la prise en main est quasiment immédiate. Afin de récupérer les informations nécessaires à la sonification, nous devions passer par le terminal afin d’exécuter des commandes permettant de retournant les données propres à chaque élément sonifiable.

### La récupération des données

Comme expliqué dans l’introduction et dans la décomposition du travail, nous avons commencé par travailler sur la partie scripting du projet.

Notre objectif était de réaliser des scripts universels pouvant être utilisés sur la majorité des ordinateurs sous Linux/GNU et ce peu importe la langue du PC. Nous souhaitions aussi récupérer un maximum d’informations possible juste avec les commandes de base Linux et sans devoir installer constamment de nouveaux packages.

Concernant cette partie, il était important après avoir défini l’ensemble des éléments que nous voulions OBLIGATOIREMENT sonifier de savoir comment récupérer ces informations et surtout d’être capable de les interpréter. Une fois le travail d’interprétation effectué, nous étions en mesure d’expliquer au groupe travaillant sur pure-data comment ils devaient gérer la donnée.

Pour nos scripts, nous avons fait le choix d’utiliser la commande `AWK`. 

L’avantage d’AWK comparé aux autres langages script c’est qu’il dispose d’une structure de programmation évitant ainsi tout problème, c’est un outil d’extraction d’informations. Cet outil permet donc d’ouvrir les fichiers en mode ‘Lecture’. Lors de ce mode, on ne peut QUE lire le fichier et on ne peut pas le modifier. En plus d’ouvrir et de lire ce qui se trouve dans le fichier, AWK le referme automatiquement. 

Lors du processus de lecture, notre outil interprète le fichier qu’il lit comme un tableau. 

Chaque mot est dans une colonne et chaque colonne est séparée par un séparateur. Ce séparateur peut être de n’importe quelle forme, cela peut très bien être un espace comme un point-virgule ou encore un slash.

Dans le vocabulaire `AWK` :

è Une ligne = Un enregistrement

è Un champ = Une suite de caractère collés à la suite des uns des autres

`AWK` permet donc de traiter des fichiers de données. Il va lire les lignes de ce fichier. Pour lui chaque ligne se termine par un retour chariot (retour à la ligne) mais il est possible de lui indiquer de lire plusieurs lignes si besoin. 

Dans notre commande `AWK`, après lui avoir indiqué le fichier source que nous allons lire, nous lui donnons des instructions à exécuter dessus. Ces instructions doivent être écrites entre des accolades et seront exécutés sur chaque enregistrements sauf si on lui indique sur quel enregistrement PRECIS nous souhaitons exécuter notre commande.

Concernant les enregistrements, pour afficher tout l’enregistrement, nous faisons appel à la variable `$0`. Si nous souhaitons en revanche afficher les champs de l’enregistrement, nous faisons donc appel aux variables `$1`,`$2`…. `$N`. (faire schéma).

Il ne faut pas oublier de préciser le séparateur de champ sinon le script ne sera pas en mesure de savoir quand comme un nouveau champ et l’utilisation des variables `$1` à `$N` sera donc inutile. 

Exemple + Explication si l’on souhaite récupérer la RAM utilisée :

![Figure 3 : Exemple + Explication d'une commande `AWK`](https://ws4.sinaimg.cn/large/006tNc79gy1g264gsy8u3j30p8040my3.jpg)

  

**En vert** nous avons la ligne de commande/ le chemin d’accès du fichier que nous voulons lire (là où se trouve l’information). 

**En jaune** nous avons notre séparateur de champ, ici on indique que ce séparateur est un espace et qu’entre chaque espace se trouve donc un champs.

**En bleu** nous indiquons la ligne où se trouve la donnée que l’on veut lire, on aurait très bien pu mettre un nom de variable par exemple `/Mem : /` pour dire à notre outil qu’il faut lire la ligne ou se trouve ce que l’on indique entre deux slashs.

**En rouge** nous avons le numéro de champ que l’on souhaite récupérer, le `$0` qui correspond à toute la ligne, ici c’est le champ numéro 2 (doc `$2`) que l’on veut.

Concernant nos scripts, ce sont des fichiers d’extension .sh qui sont lancés dans le terminal de commande et qui exécutent les commandes que l’on a écrit à l’intérieur.

On assigne ces commandes à des variables qu’on décide ou non d’afficher dans le terminal à l’aide d’un écho (c’est l’équivalent d’un « `print` »), c’est cet écho qui est récupérer dans pure-data.

Nous avons fait face à différents problèmes durant la réalisation de nos scripts. L’une des premières difficultés était la recherche des informations dans l’ordinateur. Bien que nous ne soyons pas les premiers à vouloir monitorer un système, il était parfois difficile de trouver les ressources nécessaires sur internet pour récupérer certaines informations. De plus, il existe de nombreux packages permettant de récupérer X ou Y information et notre souhait étant de se limiter le plus possible aux commandes de bases de Linux, nous n’avons parfois pas eu le choix que d’installer un package (celui pour avoir des informations sur notre réseau par exemple à l’aide de la commande `ifconfig`) juste pour une information. Enfin, dans un souci de compatibilité avec différents systèmes, nous avons dû, en plus de trouver la commande qui nous permettait d’avoir l’information que nous souhaitions, être sûr qu’elle était affichée de la même manière sur un ordinateur avec des paramètres différents et une langue par défaut aussi différente.



## Partie Pure-Data

### Familiarisation avec Pure-Data

Afin d’effectuer tout le travail sur le traitement sonore nous avons utilisé le logiciel Pure Data.
Pure-Data est un logiciel de programmation graphique pour la création musicale et multimédia en temps réel. Il permet entre autres de gérer des signaux entrants dans l'ordinateur (signaux de capteurs ou événements réseau par exemple) et de gérer des signaux sortants. 

![Figure 4 : Exemple de fonctions sur Pure-Data](https://ws3.sinaimg.cn/large/006tNc79gy1g264rz8qv1j30pc0aeq4p.jpg)

Conçu de façon modulaire, il répondait parfaitement à nos besoins car il permet une grande liberté au niveau du traitement audio. L’un des gros avantages de ce logiciel c’est qu’il permet à l’utilisateur d'effectuer des modifications de code en temps réel.

Bien qu’Hubert et Malo issus de l’option Musique & Technologie avaient déjà des connaissances sur ce logiciel, il a fallu que tout le monde se penche sur son fonctionnement une fois la partie Scripting terminée. Cela ne posa pas de problème puisque Pure Data est open source et donc assez user friendly car il existe une grande communauté de développeurs et d’utilisateurs. De nombreuses vidéos Youtube expliquent en détail le comportement des différents blocs (`Objets`, `Messages`, `Number`, etc..) et explorent les différentes possibilités d’utilisations et de combinaisons de ces derniers. Il existe également une grande documentation au sein même de Pure-Data (via l’option “`help`”) qui renseigne la façon d’utiliser les blocs ainsi que les `inlets` (entrées) et `oulets` (sorties) des blocs concernés.

Une fois les bases de l’univers d’implémentation de Pure-Data maîtrisées (connaissance des blocs à utiliser, connaissance des raccordements possibles entre les blocs etc..) le prototypage est assez rapide et permet d’aller assez loin dans le traitement des données (là où un logiciel de programmation non graphique aurait mis plus de temps). 

En se basant sur ce système d’implémentation, nous avons créés différents blocs principaux ayant une (des) entrée(s) et une (des) sortie(s) composés d’objets ou de messages, ces derniers constituent l’armature de nos blocs principaux (pour imager, on pourrait dire qu’un bloc principal soit en réalité une fonction avec une (des) entrée(s) et que les objets, les messages la composant seraient une suite d’opérations, de traitements résultant en une (des) sortie(s)).

### Récupération et traitement des données

 

![Figure 5 : Insertion d'un script dans pure-data](https://ws4.sinaimg.cn/large/006tNc79gy1g263cyhw2pj303b079glk.jpg)

Récupérer les données dans Pure Data était absolument nécessaire à l’accomplissement de nos objectifs. Pour faire cela, nous avons utilisé l’objet SHELL pour récupérer les informations suivantes :

- à RAM
- à CPU
- à Swap
- à Batterie
- à Espace utilisé dans le disque dur
- à Emission/réception de paquets 
- à Taille d’un fichier + suppression 

Une fois ces informations reçues sous forme de float (nombres à virgule) dans PD, il fallait les « normer » afin que toutes les boites de données puissent se brancher avec n’importe quelles boites de son. L’idée était de réduire les informations à l’intervalle [0-100] afin de les traiter comme un pourcentage. Le CPU et la batterie étaient déjà dans cet intervalle, donc aucun calcul n’était nécessaire (mis à part l’ajout de l’objet MTOF sur lequel nous reviendrons un peu plus tard). Cependant, la RAM et la Swap étaient exprimées en Mb, il nous a donc fallu effectuer divers calculs en fonction de la valeur de ces informations de l’ordinateur qui utilise notre programme afin d’obtenir un pourcentage (tout comme l’espace sur le disque dur et la taille d’un fichier). Les informations concernant le réseau sont traitées différemment, en effet il s’agit d’effectuer la différence des paquets reçus/envoyés après un sleep (une pause dans le script), ce dernier renvoie 1 s’il a reçu/envoyé quelque chose, et 0 si rien ne s’est produit. Cette information est traitée de façon binaire, il était donc inutile de les convertir dans l’intervalle voulu. 

Enfin, pour respecter l’échelle logarithmique, et non linéaire, du son, nous avons introduit l’objet MTOF qui permettait de respecter cette échelle. Par exemple, grâce à cet objet, la différence perçue entre 10 et 100 Hz est différente de celle perçue entre 1010 et 1100 Hz, et correspond à celle perçue entre 1010 et 10100 Hz. 

## Sound Design et musique générative 

### Sound Design

Une fois ces informations récupérées, elles sont transmises aux paramètres de son, autrement dit ce sont des fonctions permettant de traiter le son et de renvoyer ce que l’on souhaite. Elles sont au nombre de 4 :

- à Synthé
- à Sample
- à Bang
- à Générative

L’utilisateur peut donc choisir de représenter par un son en particulier, le processus qu’il souhaite. La fonction synthé correspond à un oscillateur classique avec une enveloppe permettant d’avoir un son continu. 

![Figure 6 : Fonction Bang dans pure-data](https://ws1.sinaimg.cn/large/006tNc79gy1g26503qfmdj30bs0aidgg.jpg)

![Figure 7 : Partie du fichier Sample dans pure-data](https://ws3.sinaimg.cn/large/006tNc79gy1g26505xa1lj30gc0dqmy4.jpg)

La fonction Sample (*Figure 7*) permet de choisir un sample dans notre librairie musicale (par exemple un break de batterie) et de le lire en boucle. Le module que l’on souhaite sonifier va contrôler un filtre passe bas qui va s’appliquer au sample en fonction de l’information qu’il reçoit. 

La fonction Bang (*Figure 6*) est une évolution de la fonction synthé. C’est également de la synthèse mais celle-ci est plus développée afin d’obtenir un son caractéristique. Ici nous avons fait une sorte de Tom (tambour) dont la fréquence est contrôlée par le processus de notre choix. Cette fonction possède aussi une caractéristique que les autres n’ont pas, elle permet à l’utilisateur lorsque qu’il clique sur le bang, d’avoir les toms de référence, le plus bas pour la valeur minimale et le plus haut pour la valeur maximale grâce à un delay (une pause dans pure-data), puis ensuite d’obtenir le bruit caractéristique.



### Musique générative

*Qu’est-ce que la musique générative ?* 

Ce sont des algorithmes capables de générer de la musique par eux-mêmes, en suivant un certain nombre de règles prédéfinies. Si le programme est bien construit, l'ordinateur sera capable de produire des mélodies à l'infini. Nous voulions explorer ce domaine afin de créer un parallèle entre la musique et la programmation. Benjamin Bouvrot qui a écrit son mémoire sur la répétition modulaire en musique et qui a fait une thèse sur l’automatisme de la musique dit “la musique est un des arts les plus quantifiés, la plupart des paramètres musicaux sont chiffrables [...] donc techniquement un ordinateur peut le faire. Une fugue, c’est presque un sudoku, une fois qu’on connaît les règles, la composition est très mécanique.” et c’est ce que nous voulions inclure dans notre projet. En reprenant cette idée, nous aimions énormément l’idée que la musique puisse être générée par les fluctuations du CPU. 

La musique générative est étudiée depuis plus de 20 ans donc nous ne pouvions pas développer de manière approfondie le code Pure-Data mais nous avons réussi à avoir un résultat satisfaisant et à comprendre la façon dont nous générions la musique. 

Pour générer la musique nous sommes passés par des messages **MIDI** (Musical Instrument Digital Interface, protocole de communication et un format de fichier dédiés à la musique, et utilisés pour la communication entre instruments électroniques, contrôleurs, séquenceurs, et logiciels de musique. , celui-ci ne transmet pas de signal audio mais uniquement des messages de commandes. 

Nous avons donc créé des tableaux représentants différentes gammes:

- La gamme majeur, dites ionienne.
- La gamme in sen, ou gamme japonnaise.
- La gamme dorian, souvent utilisée en jazz.

 Les valeurs de chaque tableau correspondent aux notes MIDI de la gamme. 

![Figure 8 : Tableaux des différentes gammes](https://ws3.sinaimg.cn/large/006tNc79gy1g2658ftl62j30pa050wf9.jpg)

![Figure 9 : Récupération des différents paramètres via l'objet "`makenote`"](https://ws2.sinaimg.cn/large/006tNc79gy1g265924wbaj30pc06waar.jpg)

Nous avons aussi initialisé un tableau “times” qui renvoie différentes valeurs de temps en ms.

 L’objet “makenote” récupère 3 informations: 

- La note renvoyée de façon aléatoire (choisie dans le tableau de notes de la gamme choisie par l’utilisateur au préalable) au rythme du métronome “metro”
- La vélocité générée de manière aléatoire 
- La durée pendant laquelle la note est jouée (choisie de manière aléatoire dans le tableau Times).  

L’information renvoyée par l’`inlet` (l’entrée) est le pourcentage d’utilisation de la donnée qui nous intéresse (CPU ou RAM etc.…) 

Pour donner le sentiment que la musique est plus “humaine” nous y avons rajouté une basse qui récupère les informations du métronome et des notes MIDI (la vélocité et la durée) et qui renvoie des notes prises dans un tableau. Bien sur les notes restent dans la même gamme que celle jouée, elles seront juste plus grave (exemple pour la gamme majeur de DO on a les notes MIDI 48 50 52 53 55 57 59, et pour la basse associée on aurait 36 38 40 41 43 45 47)

Toutes ces informations sont ensuite récupérées et traitées par l’objet “poly” puis jouées par un synthé “`synth`”. La sortie son s’effectue via l’`outlet` (la sortie) en fin de programme.

![Figure 10 : Récuperation des informations de l’objet makenote via l’objet poly](https://ws4.sinaimg.cn/large/006tNc79gy1g265cepyo3j30fw0ao74y.jpg)



### Interface Graphique Utilisateur (GUI)

Pour faciliter l’utilisation de notre projet, nous avons décidé de réaliser une interface graphique permettant ainsi à l’utilisateur de s’y retrouver à l’aide d’image à la place de simples boutons et de petits raccourcis lui évitant ainsi de devoir se perdre dans le code pure-data et de modifier quelque chose qu’il ne faut pas.

C’est ainsi que nous avons réalisé un menu interactif (*Figure 11*) où l’utilisateur choisi les modules qu’il veut afficher ou non et sur quoi il souhaite les brancher ensuite.
 Etant donné que cela n’est pas forcément intuitif pour tout le monde, nous avons ajouté un guide (*Figure 12*) à l’intérieur de celui-ci permettant à quiconque de pouvoir s’y retrouver ou bien de se rafraîchir la mémoire quant à des fonctionnalités dont il ne se souvient plus.

Pour chaque module, l’utilisateur doit indiquer où se trouve le fichier script pour que pure-data puisse recevoir les informations. Cela évite ainsi comme expliqué précédemment que l’utilisateur modifie lui-même le chemin d’accès et supprime quelque chose qu’il ne faut pas.

Une fois le script chargé, il suffit d’activer ou non le bouton pour que l’information s’actualise à l’écran et qu’une valeur s’affiche.
 Nous avons laissé la possibilité à l’utilisateur de gérer lui-même le volume des informations qu’il sonifie ainsi que d’amplifier la donnée reçue par pure-data si jamais celle-ci était trop basse et que le son était déjà à son maximum.

Les modules doivent obligatoirement être branchés sur des boîtes de sons si l’on veut entendre quelque chose, sans ça, aucun son ne sera produit.
 La boîte permettant de générer le son, `DAC~`(Digital Analog Converter) se trouve déjà sur notre fenêtre étant donné qu’elle est nécessaire au bon fonctionnement du programme.

# ![Figure 11 : Menu présent dans notre fenêtre principale](https://ws1.sinaimg.cn/large/006tNc79gy1g263d146x4j304o0733ym.jpg)                                                  ![Figure 12 : Guide intégré à notre programme](https://ws1.sinaimg.cn/large/006tNc79gy1g265f6us7vj30hu0ey77c.jpg)                                                                                                            

## Conclusion du projet

### Objectifs atteints et non atteints

Nos objectifs dans ce projet étaient multiples et ont été en partie remplis. En effet il s’agissait tout d’abord de bien définir quels processus informatiques nous allions sonifier, puis comment nous allions nous y prendre pour extraire ces informations souhaitées. Cet objectif fut réalisé avec succès et nous avons pu attaquer la partie Pure Data, autrement dit le traitement des informations. Cette finalité a aussi été atteinte car nous avons pu moduler des sons grâce a ces informations. La problématique de l’interface utilisateur et du confort de ce dernier lors de l’utilisation de notre programme, ainsi que l’implémentation d’un programme de musique générative constituaient nos objectifs bonus et ont aussi été réalisés avec succès. Malheureusement l’idée de spatialisation des processus sonifiés a 360° a été abandonnée par manque de temps. Néanmoins, nous avons en partie rempli l’objectif d’avoir un projet extrêmement ouvert et améliorable en tournant notre programme dans l’idée des synthétiseurs modulaires. Ainsi, nous pouvons rajouter des fonctionnalités à l’infini afin de sonifier d’autres informations. 

### Améliorations possibles

Nous sommes assez fiers du rendu final de notre projet mais nous ne pouvons pas nous empêcher d’imaginer que des améliorations restent possibles pour celui-ci.

Si notre projet est récupéré par un groupe d’étudiants ou par un enseignant, nous leur recommandons en premier lieu de retravailler le design sonore car cela représente une grosse partie du projet, en effet sonifier traduit une information visuelle en information sonore mais il faut rendre cette information sonore la plus agréable et la plus pertinente possible. On pourrait notamment développer l’idée de musique générative afin de la rendre plus “humaine”, comme ajouter des silences, des motifs répétitifs, des accords en fonction des “pics” de données ou encore donner la possibilité à l’utilisateur de choisir l’instrument qui jouera les notes.

Il serait intéressant que ceux qui reprennent le sujet se penchent vers d’autres éléments sonifiables tel que par exemple la fin de l’exécution d’une commande ou la fin de téléchargement d’un fichier.

Un des points d’amélioration possible serait également de rendre notre programme compatible avec n’importe quel système d’exploitation, notamment Windows ou MAC. Nous recommandons notamment à ceux qui récupéreront ce projet de se pencher en premier lieu sur la partie MAC car celle-ci sera plus simple que Windows étant donné que MAC a une base UNIX rendant certains scripts compatibles avec cet OS.

Pour rendre l’interface la plus simple et agréable possible on pourrait également imaginer une interface graphique qui n’oblige pas l’utilisateur à connecter lui-même les blocs pour entendre l’information sonifiée. Pour remédier à ce problème on pourrait concevoir une interface uniquement avec des boutons ou bien même créer une interface avec Python (Tkinter).

## Annexe

### Scripts

<https://www.debian-fr.org/t/resolu-supprimer-le-dernier-caractere-dune-varible/21632>

**Supprimer le dernier caractère d’une ligne de commande pour ne garder que ce que l’on souhaite**

 

<https://www.cyberciti.biz/faq/linux-laptop-battery-status-temperature/>

**Trouver des informations sur la batterie**

 

<https://stackoverflow.com/questions/11720079/how-can-i-see-the-size-of-files-and-directories-in-linux>

<https://stackoverflow.com/questions/1241801/total-size-of-the-contents-of-all-the-files-in-a-directory>

**Explications sur un forum sur comment trouver la taille d’un fichier ou d’un dossier dans linux**

<https://www.developpez.net/forums/d805886/systemes/linux/se-trouve-dossier-corbeille-linux/>

 <https://superuser.com/questions/530104/how-to-find-which-files-and-folders-were-deleted-recently-in-linux>

<https://unix.stackexchange.com/questions/450123/check-if-files-are-deleted>

<http://www.linuxweblog.com/undelete-files>

<https://stackoverflow.com/questions/31883839/how-to-list-recently-deleted-files-from-a-directory>

**Chemin d’accès vers la corbeille expliqué pour pouvoir y déplacer des fichiers + informations sur comment savoir si un fichier est supprimé ou non**

 

 <https://www.tutorialspoint.com/unix/unix-basic-operators.htm>

 <https://www.it-connect.fr/creer-des-alias-de-commandes-sous-linux%EF%BB%BF/>

 <https://www.youtube.com/watch?v=8pvlp5LNUYY>

**Quelques règles sur linux**

 

 <https://superuser.com/questions/433725/accidental-fsck-on-mounted/433785#433785>

 <https://forum.ubuntu-fr.org/viewtopic.php?id=185780>

 <https://chris-lamb.co.uk/posts/can-you-get-cp-to-give-a-progress-bar-like-wget>

 <https://www.linuxtricks.fr/wiki/pv-avoir-des-informations-sur-le-temps-d-une-tache>

**Quelques liens pour des pistes d’amélioration** 

 

### GUI

 <http://blazicek.net/list_of_pure_data_objects.html>

 <https://forum.pdpatchrepo.info/topic/8555/gui-objects-and-color-scheme/5>

 

##  

 
