# School
gestion inscription JEE

School est un projet Java EE qui gère l'Inscription d'un Etudiant à des Cours pour une Année. Le projet se base sur les EJB pour la partie gestion et accès au donnée et jsp servlet pour la partie web.
L'objectif de ce projet et de comprendre la structure de Java JEE. Ainsi il comprend une partie EAR qui est le projet entreprise, une partie EJB pour la gestion des
entités et l'accès au données et une partie web avec jsp servlet. Pour le déploiement nous utilisons le serveur WildFly Les configuration nécessaire sont faite de le fichier persistence.xml du dossier META-INF du EJB module représenté ci-dessou.

<img width="714" alt="image" src="https://user-images.githubusercontent.com/98522554/221598344-d75f586b-97a5-46a6-9394-e5526bcdaefd.png">

NB: Aprés avoir créé le projet Web il faut le linker avec le projet EJB dans le buldpath comme illustré dans l'image suivante.

<img width="226" alt="image" src="https://user-images.githubusercontent.com/98522554/221585991-0be5013a-f35b-4d91-98cf-608a361eb228.png">

Dans l'image ci-dessous nous avons la représentation uml de nos classe.

<img width="545" alt="image" src="https://user-images.githubusercontent.com/98522554/221583041-becbe2c3-3de5-4a71-8be2-793c2c553012.png">

Les classes sont implémentés dans le package com.groupeisi.entitie du EJB module. La couche dao(data acces object) qui permet d'accédé au données via le fichie persistence.xml initialement cité. Nous allons illustrer et commenté Courses dans le dao avec ses différentes interfaces. Tout d'abord nous avons deux interface @Remote et @Local donc accessible en local et à distance. Les methodes suivante sont définie dans les 2 interfaces.

<img width="220" alt="image" src="https://user-images.githubusercontent.com/98522554/221591682-608606d9-691a-4554-b63d-ded5bc67ec1e.png">

Comptedao vas implémenté les ces méthodes

<img width="389" alt="image" src="https://user-images.githubusercontent.com/98522554/221595251-bdad83af-9ec7-47d3-8a58-41b049ab3df1.png">

l'annotation @Stateless signifie qu'il s'agit d'un bean sans état.

Pour la partie web, nous avons eu à traiter un exemple détailler sans les EJB voici le lien: https://github.com/Gakoudev/securityweb. La différence réside dans le fait que si le projet est lié à un projet EJB, il faut mettre l'annotaion @EJB devant l'interface que l'on souhaite manipulé pour accéder aux
données.Voici une illustration :

<img width="205" alt="image" src="https://user-images.githubusercontent.com/98522554/221600995-98d48bf5-9079-4750-a563-3c2c2db77616.png">
<img width="658" alt="image" src="https://user-images.githubusercontent.com/98522554/221601181-aab9bd82-d61f-47cc-bce8-d8f5e6ca7ad5.png">


                  ------------PRESENTATION DES ECRANS------------
Tout d'abord ajoutons un cours JAVA 2.

<img width="536" alt="image" src="https://user-images.githubusercontent.com/98522554/221604681-942f4d0a-723c-4f8f-8b0e-4ebcd682fac2.png">
<img width="764" alt="image" src="https://user-images.githubusercontent.com/98522554/221604837-b0ed4c93-76a1-4eac-8b62-0cc1ffdc0cc4.png">

Ensuite ajoutons une nouvelle année d'étude 2021.

<img width="574" alt="image" src="https://user-images.githubusercontent.com/98522554/221605195-5a4d6f8c-c5c4-4610-b50d-9ac07f129e1d.png">
<img width="767" alt="image" src="https://user-images.githubusercontent.com/98522554/221605315-31373095-2634-4b56-85c8-394a5f4e5f9f.png">

Aprés avoir ajouté une année et un cours, ajoutons un étudiant.

<img width="754" alt="image" src="https://user-images.githubusercontent.com/98522554/221606220-fe069509-f1d3-451e-9749-1e078403ae2d.png">
<img width="764" alt="image" src="https://user-images.githubusercontent.com/98522554/221606311-782814be-7bc8-4fd8-b700-37fcc01fdefb.png">

Nous allons passer a l'inscription de l'étudiant précedament ajouter au cours JAVA 2 pour l'année 2020.

<img width="739" alt="image" src="https://user-images.githubusercontent.com/98522554/221606895-d627a488-2c84-4d84-b899-7b9699dc22f1.png">
<img width="770" alt="image" src="https://user-images.githubusercontent.com/98522554/221606997-d6f79f7d-412f-43cc-a57e-62bd8f419694.png">

L'étudiant aurait dû être inscrit pour l'année 2021. Nous allons modifier l'inscription.

<img width="769" alt="image" src="https://user-images.githubusercontent.com/98522554/221607590-3d44ba7c-761b-4637-aa58-6db170c2e09f.png">
<img width="761" alt="image" src="https://user-images.githubusercontent.com/98522554/221607663-925dcd2a-5592-4567-b830-17aee56ec139.png">
 
 Ajoutons une inscription pour le cours JAVA à Malick Mbaye pour l'année 2021 puis supprimons son inscription pour le cours JAVA 2 de l'année 2021.
 
 <img width="754" alt="image" src="https://user-images.githubusercontent.com/98522554/221608490-74168609-e486-452c-aecb-723744b14d7a.png">
<img width="769" alt="image" src="https://user-images.githubusercontent.com/98522554/221608612-d70b3fb1-5807-4339-b880-b7525bc07750.png">
<img width="760" alt="image" src="https://user-images.githubusercontent.com/98522554/221609187-e0305fdf-77f3-44fb-9894-3efdf6f3cfb4.png">

                  ------------Perspective------------
Dans ce projet nous avons réaliser 2 points soulever dans les perspective du projet securityweb(https://github.com/Gakoudev/securityweb) à savoir faire le update et
le delete. Maintenant il faut implémenter la classe Repository comme le fait Spring au lieu de réécrire à chaque fois les mêmes methodes dans les interfaces et leurs implémentations.
