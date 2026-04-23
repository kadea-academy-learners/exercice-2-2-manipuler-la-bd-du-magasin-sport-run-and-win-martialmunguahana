Fichier : queries.sql
Base : magasin-sport-run-and-win
Objectif : Réponses aux 5 exercices de requêtes SQL
Auteur : [martial ombeni]
Date : 2026-04-24

Exercice 1 : Tennis Premium
Objectif : Articles de la catégorie 'Tennis' avec prix > 100€
Compétence : SELECT de colonnes spécifiques + WHERE avec comparateur simple

SELECT nom_produit, prix
FROM produits
WHERE categorie = 'Tennis' AND prix > 100;


Exercice 2 : Déstockage Rando
Objectif : Produits dont le nom contient 'Rando' et stock < 5
Compétence : LIKE '%...%' et opérateur <
SELECT nom_produit, stock, prix
FROM produits
WHERE nom_produit LIKE '%Rando%' AND stock < 5;

Exercice 3 : Villes Prioritaires (Bukavu ou Matadi)
Objectif : Clients habitant à Bukavu ou Matadi
Compétence : IN (ou OR)
SELECT nom, prenom, email
FROM clients
WHERE ville IN ('Bukavu', 'Matadi');

Version alternative avec OR (commentée)
SELECT nom, prenom, email
FROM clients
WHERE ville = 'Bukavu' OR ville = 'Matadi';

Exercice 4 : Anciens articles Combat (20€ – 50€)
Objectif : Articles de la catégorie 'Combat' avec prix entre 20 et 50€ inclus
Compétence : BETWEEN

SELECT *
FROM produits
WHERE categorie = 'Combat' AND prix BETWEEN 20 AND 50;

Version alternative avec >= AND <= (commentée)
SELECT *
FROM produits
WHERE categorie = 'Combat' AND prix >= 20 AND prix <= 50;

Exercice 5 : Inactifs de Lubumbashi (inscrits avant 2025)
Objectif : Clients de Lubumbashi avec date_inscription < 2025-01-01
Compétence : Filtrage sur date avec AND

SELECT nom, ville, date_inscription
FROM clients
WHERE ville = 'Lubumbashi' AND date_inscription < '2025-01-01';