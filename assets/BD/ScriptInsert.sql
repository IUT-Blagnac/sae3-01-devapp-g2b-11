-- CATEGORIE  
INSERT INTO CATEGORIE (idcategorie, nomcategorie)
VALUES('1', 'Alimentation');
INSERT INTO CATEGORIE (idcategorie, nomcategorie)
VALUES('2', 'Hygiène');
INSERT INTO CATEGORIE (idcategorie, nomcategorie)
VALUES('3', 'Ménager');

-- CATEGORIE FILLE
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('01', '1', 'Fruits');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('02', '1', 'Légumes');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('03', '1', 'Viandes');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('04', '1', 'Crémerie');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('05', '1', 'Sucré');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('06', '1', 'Salé');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('07', '2', 'Savons');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('08', '2', 'Shampoings');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('09', '2', 'Soins');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('10', '3', 'Nettoyant cuisine');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('11', '3', 'Nettoyant sol');
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('12', '3', 'Nettoyant salle de bains');

-- SOUS CATEGORIE FILLE
INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('001', '01', 'Fraise');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('002', '02', 'Haricot vert');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('003', '03', 'Poulet');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('004', '04', 'Fromage');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('005', '05', 'Bonbons');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('006', '06', 'Chips');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('007', '07', 'Savons liquides');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('008', '08', 'Shampoings liquides');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('009', '09', 'Soin du visage');

INSERT INTO CATEGORIE (idcategorie, idcategoriemere ,nomcategorie)
VALUES('010', '10', 'Liquide vaisselle');

-- ///////////////////////////////////////////////////////////////

-- PRODUITS
INSERT INTO PRODUIT
VALUES('','001','Fraise Mara des bois',1.38,'Burban producteur', 'Un parfum très prononcé de fraises des bois, une texture fondante et originale', null, 200);
INSERT INTO PRODUIT
VALUES('','001','Fraise Gariguette',3.00,'Le jardin de Marie','Fraise Gariguette juteuse et parfumée cultivée dans un jardin en Provence',null,300);
INSERT INTO PRODUIT
VALUES('','001','Fraise Charlotte',2.75,'Les champs de Bertrand','Fraise Charlotte ferme et aromatique cultivée dans les champs de la vallée de la Loire',null,275);
INSERT INTO PRODUIT
VALUES('','001','Fraise Gorella',2.50,'Le marais de Paulo','Fraise Gorella justeuse et sucrée cultivé dans un marais à proximité de Toulouse',null,250);

INSERT INTO PRODUIT
VALUES('','002','Haricot vert à filet de Pau',2.00,'Paulolo', 'Harciot vert cultivé avec passion et tendresse',null, 20);
INSERT INTO PRODUIT
VALUES('','002','Haricot blanc d''Espelette',2.50,'Espelette BIO', 'Haricot blanc cultivé selon les méthodes biologiques dans la vallée d''Espelette',null, 30);
INSERT INTO PRODUIT
VALUES('','002','Flageolet du Puy',3.00,'Le Puy BIO', 'Flageolet cultivé avec soin dans la région du Puy en Velay',null, 40);
INSERT INTO PRODUIT
VALUES('','002','Haricot coco de Noirmoutier',3.50,'Noirmoutier BIO', 'Haricot coco cultivé sur l''île de Noirmoutier en agriculture biologique',null, 50);

INSERT INTO PRODUIT
VALUES('','003','Ailes de poulet',10.81,'Boucherie Les Fontaines', 'L''un des morceaux les plus tendres de viande de poulet', null, 47);
INSERT INTO PRODUIT
VALUES('','003','Filet de poulet',31.30,'Boucherie Les Fontaines', 'Tranche fine de viande, prélevée sur la poitrine, dans le sens de la longueur', null, 22);
INSERT INTO PRODUIT
VALUES('','003','Pilons de poulet',8.90,'Boucherie Les Fontaines', 'Morceau charnu et très prisé, le pilon de poulet est une valeur sûre pour un repas facile et rapide', null, 36);
INSERT INTO PRODUIT
VALUES('','003','Cuisses de poulet',12.66,'Boucherie Les Fontaines', 'Viande tendre et savoureuse qu’on aime manger à pleines dents', null, 19);

INSERT INTO PRODUIT
VALUES('','004','Comté',17.90,'La Laiterie Toulousaine', 'Fromage au lait cru à pâte pressée.  A la fois doux, aromatique, parfois légèrement piquant, toujours parfumé', null, 33);
INSERT INTO PRODUIT
VALUES('','004','Roquefort',25.75,'La Laiterie Toulousaine', 'Fromage au lait cru de brebis reconnaissable entre tous par sa couleur ivoire et son délicat persillage vert émeraude,', null, 52);
INSERT INTO PRODUIT
VALUES('','004','Feta',18.61,'La Laiterie Toulousaine', 'Fromage grec typique à la texture ferme, onctueuse et à la couleur blanc ivoire, ce fromage à base de lait de brebis et de lait de chèvre', null, 15);
INSERT INTO PRODUIT
VALUES('','004','Cheddar',18.45,'La Laiterie Toulousaine', 'Fromgae à pâte pressée typiquement britannique au lait de vache pasteurisé avec un goût puissant et intense aux notes de caramel.', null, 64);

INSERT INTO Produit VALUES (1,1 , 'Poudre lave-vaisselle au sel de Camargue', 14.90, 'Comme Avant', 'Conçue à la main dans un atelier de Fabrication près de Marseille, cette poudre pour lave-vaisselle est une alternative naturelle qui rendra votre vaisselle propre et brillante.', 'Acide citrique, Cristaux de soude, Percarbonate de soude, Sel de Camargue', 23);

INSERT INTO Produit VALUES (2,2,'Lessive en poudre au bicarbonate', 9.90, 'Comme Avant', 'Cette lessive écologique est composée de seulement 4 ingrédients. Sa composition est simple, naturelle et efficace pour laver son linge (même blanc). Elle ne contient aucun parfum, même naturel, pour des vêtements propres et sans ordeur.', 'Citrate de sodium, Bicarbonate de soude, Cristaux de soude, Percarbonate de soude', 40);

INSERT INTO Produit VALUES (3,2, '18-EN-1 Savon Liquide Lavande', 2.34, 'Dr. Bronners' , 'Le parfum généreux, direct et suave de la lavande, reconnaissable entre mille, reste un des parfums les plus apaisants. C’est la raison pour laquelle il est utilisé depuis toujours comme élément de détente. L’huile essentielle de lavande bio à des propriétés apaisantes pour le corps et l’esprit.', 'Eau, Cocoate de potassium, Chlorure de potassium, Olivate de potassium, Glycérine, Huilde de lavandin, Hempate de potassium, Potassium Jojobate, Huile de lavande, Acide Citrique', 12);

INSERT INTO Produit VALUES (3,2, 'Nettoyant Universel', 2.99, 'Method', 'Ce nettoyant universel de method est à base d ingrédients biodégradables', 'Eau, Capryl Glucoside, Laureth-7, Tetrasodium, Glumatate Diacetate, Parfum, Limonene, Potassium Hydroxique, Hexyl, Cinnamal, Colorant', 34);

INSERT INTO Produit VALUES (4,2,'Lessive liquide hypoallergénique 5l', 26.20, 'Etamin du Lys', 'Idéale Pour le textile des bébés, jeunes enfants et tous ceux qui ont une peau sensible. Sans agent de blanchiment, efficace aussi bien à la main qu''en machine et à basse température, elle vous laisse un linge propre et doux!', 'sucrières, palmistes, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES (5,2,'Détergent à vaisselle bio 5l', 18.50, 'Eco-Clean', 'Notre détergent à vaisselle biologique est fabriqué à partir d''ingrédients naturels et est doux pour les mains. Il laisse votre vaisselle brillante et propre sans utiliser de produits chimiques agressifs.', 'eau, amidon de maïs, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

INSERT INTO Produit VALUES (6,2,'Nettoyant multi-surface bio 500ml', 9.99, 'Verte Ville', 'Notre nettoyant multi-surface biologique est idéal pour tous vos besoins de nettoyage quotidiens. Fabriqué à partir d''ingrédients naturels, il est doux pour les surfaces et pour l''environnement.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES (7,2,'Lessive en poudre hypoallergénique 1kg', 12.99, 'Eco-Lavage', 'Notre lessive en poudre hypoallergénique est douce pour les peaux sensibles et efficace pour enlever les taches difficiles. Fabriquée à partir d''ingrédients naturels, elle est sûre pour votre famille et pour l''environnement.', 'sucrières, palmistes, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 35);

INSERT INTO Produit VALUES (8,2,'Déodorant pour les poubelles bio 500ml', 6.99, 'Odeur Fraîche', 'Notre déodorant pour les poubelles biologique est fabriqué à partir d''ingrédients naturels et est doux pour l''environnement. Il neutralise les mauvaises odeurs pour laisser votre poubelle fraîche et propre.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 40);

INSERT INTO Produit VALUES (9,2,'Nettoyant pour WC bio 750ml', 7.49, 'Eco-Toilette', 'Notre nettoyant pour WC biologique est efficace pour enlever les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs. Fabriqué à partir d''ingrédients naturels, il est sûr pour votre famille et pour l''environnement.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 35);

INSERT INTO Produit VALUES (10,2,'Nettoyant pour sols bio 1l', 9.99, 'Sol Propre', 'Notre nettoyant pour sols biologique est doux pour les surfaces et l''environnement. Il laisse vos sols propres et brillants sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES (11,2,'Nettoyant pour meubles en bois bio 500ml', 12.49, 'Bois Brillant', 'Notre nettoyant pour meubles en bois biologique est doux pour les surfaces et l''environnement. Il nourrit et protège vos meubles en bois tout en les laissant brillants et propres.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES (12,2,'Nettoyant pour vitres bio 500ml', 8.99, 'Vitres Propres', 'Notre nettoyant pour vitres biologique est doux pour les surfaces et l''environnement. Il laisse vos vitres propres et brillantes sans laisser de traces.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

INSERT INTO Produit VALUES (13,2,'Nettoyant pour cuisines bio 500ml', 9.99, 'Cuisine Propre', 'Notre nettoyant pour cuisines biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES (14,2,'Nettoyant pour salle de bain bio 500ml', 9.99, 'Salle de Bain Propre', 'Notre nettoyant pour salle de bain biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES (15,2,'Nettoyant pour jardin bio 1l', 12.99, 'Jardin Propre', 'Notre nettoyant pour jardin biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES (16,2,'Nettoyant pour meubles en cuir bio 250ml', 14.99, 'Cuir Propre', 'Notre nettoyant pour meubles en cuir biologique est doux pour les surfaces et l''environnement. Il nourrit et protège vos meubles en cuir tout en les laissant brillants et propres.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

VALUES('','004','Cheddar',18.45,'La Laiterie Toulousaine', 'Fromgae à pâte pressée typiquement britannique au lait de vache pasteurisé avec un goût puissant et intense aux notes de caramel.', null, 64);

-- ///////////////////////////////////////////////////////////////

----------------
--CLIENTS--
----------------
INSERT INTO Clients VALUES ('10', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Longeque', 'Rubén', '18 Boulevard Alain Savary, 31700 Blagnac', '0652521335', 'ruben@gmail.com',null);
INSERT INTO Clients VALUES ('11', NULL, 'Lopez', 'Maria', '21 Avenue Jean Mermoz, 31200 Toulouse', '0658975236', 'maria@gmail.com', NULL);
INSERT INTO Clients VALUES ('12', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dupont', 'Jacques', '13 Rue des Arts, 31000 Toulouse', '0654239871', 'jacques@gmail.com', NULL);
INSERT INTO Clients VALUES ('13', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Durand', 'Sylvie', '2 Boulevard de la Marne, 31300 Toulouse', '0654567891', 'sylvie@gmail.com', NULL);
INSERT INTO Clients VALUES ('14', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Garcia', 'Ramon', '14 Avenue des Arènes, 31100 Toulouse', '0652457813', 'ramon@gmail.com', NULL);
INSERT INTO Clients VALUES ('15', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Smith', 'John', '30 Rue du Général de Gaulle, 92000 Nanterre', '0651324578', 'john@gmail.com', NULL);
INSERT INTO Clients VALUES ('16', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Labege', 'Jeanne', '12 Place du Marché, 63500 Issoire', '0687371578', 'jeanne@gmail.com', NULL);
INSERT INTO Clients VALUES ('17', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Marseille', 'Marie', '4 Avenue de la Joliette, 13002 Marseille', '0687345678', 'marie@gmail.com', NULL);
INSERT INTO Clients VALUES ('18', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Lyon', 'Luc', '2 Rue de la Croix Rousse, 69004 Lyon', '0687345679', 'luc@gmail.com', NULL);
INSERT INTO Clients VALUES ('19', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Toulouse', 'Laure', '11 Rue du Taur, 31000 Toulouse', '0687345680', 'laure@gmail.com', NULL);
INSERT INTO Clients VALUES ('20', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Nice', 'Léa', '7 Promenade des Anglais, 06000 Nice', '0687345681', 'lea@gmail.com', NULL);
INSERT INTO Clients VALUES ('21', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Nantes', 'Léo', '30 Avenue du Parc, 06300 Nice', '0687345682', 'leo@gmail.com', NULL);
INSERT INTO Clients VALUES ('22', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Paris', 'Paul', '3 Rue de la Paix, 75002 Paris', '0652527835', 'paul@gmail.com', NULL);
INSERT INTO Clients VALUES ('23', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Lille', 'Pierre', '20 Rue de la Monnaie, 59000 Lille', '0652528435', 'pierre@gmail.com', NULL);
INSERT INTO Clients VALUES ('24', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Bordeaux', 'Julie', '5 Place de la Bourse, 33000 Bordeaux', '0652528735', 'julie@gmail.com', NULL);
INSERT INTO Clients VALUES ('25', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Strasbourg', 'Julien', '15 Place Kléber, 67000 Strasbourg', '0652529135', 'julien@gmail.com', NULL);
INSERT INTO Clients VALUES ('26', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Montpellier', 'Jérôme', '1 Place de la Comédie, 34000 Montpellier', '0652529535', 'jerome@gmail.com', NULL);
INSERT INTO Clients VALUES ('27', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Rouen', 'Emile', '3 Rue Saint-Romain, 76000 Rouen', '0652525635', 'emile@gmail.com', NULL);
INSERT INTO Clients VALUES ('28', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Reims', 'Eve', '20 Rue de la Paix, 51100 Reims', '0652525435', 'eve@gmail.com', NULL);
INSERT INTO Clients VALUES ('29', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Le Mans', 'Etienne', '5 Rue des Jacobins, 72100 Le Mans', '0652525735', 'etienne@gmail.com', NULL);
INSERT INTO Clients VALUES ('30', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Limoges', 'Elodie', '15 Avenue de la République, 87000 Limoges', '0652525935', 'elodie@gmail.com', NULL);
INSERT INTO Clients VALUES ('31', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Grenoble', 'Elie', '1 Rue Félix Poulat, 38000 Grenoble', '0652526035', 'elie@gmail.com', NULL);
INSERT INTO Clients VALUES ('32', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dupond', 'Marie', '5 Rue des Faussets, 25000 Besançon', '0123456789', 'marie.dupond@sfr.fr',null);
INSERT INTO Clients VALUES ('33', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Martin', 'Luc', '10 Place de la République, 69003 Lyon', '0987654321', 'luc.martin@gmail.com',null);
INSERT INTO Clients VALUES ('34', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Rousseau', 'Jacques', '1 Avenue Jean-Jaurès, 31000 Toulouse', '0678542109', 'jacques.rousseau@gmail.com',null);
INSERT INTO Clients VALUES ('35', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Garcia', 'Sofia', '2 Boulevard Victor Hugo, 59000 Lille', '0512349876', 'sofia.garcia@gmail.com',null);
INSERT INTO Clients VALUES ('36', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Bertrand', 'Anne', '3 Rue des Frères Lumière, 34000 Montpellier', '0394856712', 'anne.bertrand@gmail.com',null);
INSERT INTO Clients VALUES ('37', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dupont', 'Marie', '5 Avenue des Champs-Elysées, 75008 Paris', '0123456789', 'marie.dupont@gmail.com',null);
INSERT INTO Clients VALUES ('38', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Martin', 'Luc', '10 Place de la République, 69003 Lyon', '0987654321', 'luc.martin@gmail.com',null);
INSERT INTO Clients VALUES ('39', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Rousseau', 'Jacques', '1 Avenue Jean-Jaurès, 31000 Toulouse', '0678542109', 'jacques.rousseau@gmail.com',null);
INSERT INTO Clients VALUES ('40', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Garcia', 'Sofia', '2 Boulevard Victor Hugo, 59000 Lille', '0512349876', 'sofia.garcia@gmail.com',null);
INSERT INTO Clients VALUES ('41', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Bertrand', 'Anne', '3 Rue des Frères Lumière, 34000 Montpellier', '0394856712', 'anne.bertrand@gmail.com',null);
INSERT INTO Clients VALUES ('42', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dupont', 'Marie', '5 Avenue des Champs-Elysées, 75008 Paris', '0123456789', 'marie.dupont@gmail.com',null);
INSERT INTO Clients VALUES ('43', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Martin', 'Luc', '10 Place de la République, 69003 Lyon', '0987654321', 'luc.martin@hotmail.fr',null);
INSERT INTO Clients VALUES ('44', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Rousseau', 'Jacques', '1 Avenue Jean-Jaurès, 31000 Toulouse', '0678542109', 'jacques.rousseau@outlook.com',null);
INSERT INTO Clients VALUES ('45', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Garcia', 'Sofia', '2 Boulevard Victor Hugo, 59000 Lille', '0512349876', 'sofia.garcia@yahoo.fr',null);
INSERT INTO Clients VALUES ('46', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Bertrand', 'Anne', '3 Rue des Frères Lumière, 34000 Montpellier', '0394856712', 'anne.bertrand@orange.fr',null);
INSERT INTO Clients VALUES ('47', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Duval', 'Jacques', '2 Avenue de la République, 75011 Paris', '0123456789', 'jacques.duval@gmail.com', null);
INSERT INTO Clients VALUES ('48', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Lefebvre', 'Sylvie', '1 Place des Quinconces, 33000 Bordeaux', '0987654321', 'sylvie.lefebvre@yahoo.fr', null);
INSERT INTO Clients VALUES ('49', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Garcia', 'Alain', '45 Rue des Pins, 97400 Saint-Denis', '0698521475', 'alain.garcia@hotmail.com', null);
INSERT INTO Clients VALUES ('50', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Moreau', 'Lucie', '7 Boulevard Michelet, 13001 Marseille', '0478596321', 'lucie.moreau@outlook.fr', null);
INSERT INTO Clients VALUES ('51', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Perrin', 'Gérard', '4 Place du Capitole, 31000 Toulouse', '0569841275', 'gerard.perrin@aol.com', null);
INSERT INTO Clients VALUES ('52', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dubois', 'Jean', '20 Avenue Jean Jaures, 69100 Villeurbanne', '0394856712', 'jean.dubois@yahoo.fr',null);
INSERT INTO Clients VALUES ('53', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Leclerc', 'Emma', '21 Rue de la Préfecture, 80000 Amiens', 'emma.leclerc@outlook.com',null);
INSERT INTO Clients VALUES ('54', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Leroy', 'Sophie', '2 Rue de la Croix des Moinats, 34000 Montpellier', '0394856712', 'sophie.leroy@orange.fr',null);
INSERT INTO Clients VALUES ('55', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Perrin', 'Lucie', '15 Avenue du Général de Gaulle, 44000 Nantes', '0394856712', 'lucie.perrin@hotmail.com',null);
INSERT INTO Clients VALUES ('56', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Dupont', 'Marie', '1 Avenue de la République, 75002 Paris', '0685748596', 'marie.dupont@gmail.com',null);
INSERT INTO Clients VALUES ('57', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Martin', 'Luc', '2 Place du Général de Gaulle, 13100 Aix-en-Provence', '0689857213', 'luc.martin@yahoo.fr',null);
INSERT INTO Clients VALUES ('58', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Lefevre', 'Sophie', '4 Allée des Tilleuls, 44000 Nantes', '0495872124', 'sophie.lefevre@sfr.fr',null);
INSERT INTO Clients VALUES ('59', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Rousseau', 'Julien', '5 Rue des Fleurs, 75016 Paris', '0675841236', 'julien.rousseau@hotmail.fr',null);
INSERT INTO Clients VALUES ('60', '$2y$10$POjKzDoQW.GBG4p9xyyGBe8jwnOJklu4nI9nv.dhDcYxLUyTopRMa', 'Bernard', 'Emilie', '6 Avenue du Maréchal Foch, 62200 Boulogne-sur-Mer', '0685741632', 'emilie.bernard@aol.fr',null);

----------------
--ADMIN--
----------------
insert into Admin values ('000000000001',null,'Balmes', 'Bastien','bastien@gmail.com','000022658410');


----------------
--CATEGORIE--
----------------
insert into Categorie values ('1',null,'Fruits');
insert into Categorie values ('2',null,'Légumes');
insert into Categorie values ('8',null,'Savons');


insert into Categorie values ('0001','1','Fraises');
insert into Categorie values ('100  1','2','Courgette');
insert into Categorie values ('01001','8','Savons Liquides');
insert into Categorie values ('01002','8','Savons Solides');
insert into Categorie values ('10001','2','Salades');




----------------
--PRODUIT--
----------------
insert into Produit values ('1111','0001','Fraise Gorella',2.50,'Le marais de Paulo','Fraise Gorella justeuse et sucrée cultivé dans un marais à proximité de Toulouse',null,250);
insert into Produit values ('1112','0001','Fraise Gariguette',3.00,'Le jardin de Marie','Fraise Gariguette juteuse et parfumée cultivée dans un jardin en Provence',null,300);
insert into Produit values ('1113','0001','Fraise Charlotte',2.75,'Les champs de Bertrand','Fraise Charlotte ferme et aromatique cultivée dans les champs de la vallée de la Loire',null,275);
insert into Produit values ('111','0001','Fraise Mara des bois',3.50,'La forêt de Sophie','Fraise Mara des bois délicate et fruitée cultivée dans la forêt de Fontainebleau',null,350);
insert into Produit values ('1114','0001','Fraise Mara des champs',2.25,'Le potager de Samuel','Fraise Mara des champs robuste et sucrée cultivée dans un potager en Normandie',null,225);
insert into Produit values ('1115','0001','Fraise des bois',3.25,'La ferme de Jacques','Fraise des bois sauvage et parfumée cueillie à la main dans la ferme de Jacques en Bretagne',null,325);


----------------
--PAIEMENT&DETAILPAIEMENT--
----------------
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0001','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0002','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0003','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0004','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0005','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0006','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0007','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0008','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0009','Carte Bleu');
INSERT INTO PAIEMENT (IDPAIEMENT,TYPEPAIEMENT)
VALUES ('0010','Carte Bleu'); 
--------------------------------------------------------------------------------------------------
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('11','0001','4716 1857 1282 7454',TO_DATE('05/22','MM/YY'),'114');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('12','0002','4485 4627 5787 4496',TO_DATE('01/22','MM/YY'),'273');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('10','0003','4716 9678 8771 6699',TO_DATE('05/23','MM/YY'),'376');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('12','0004','4929 5697 9437 3920',TO_DATE('12/22','MM/YY'),'478');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('11','0005','4485 8122 6814 6935',TO_DATE('06/23','MM/YY'),'542');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('18','0006','4716 5953 3776 2763',TO_DATE('10/22','MM/YY'),'978');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('14','0007','4716 2477 2763 7441',TO_DATE('06/22','MM/YY'),'285');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('19','0008','4556 8883 4982 3365',TO_DATE('05/23','MM/YY'),'731');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('13','0009','4929 2767 7735 7777',TO_DATE('06/22','MM/YY'),'129');
INSERT INTO DETAILPAIEMENT (IDCLIENT,IDPAIEMENT,NUMEROCARTE,DATEINVALIDITE,CRYPTOGRAMMECARTE)
VALUES ('12','0010','4916 8874 4218 1437',TO_DATE('10/23','MM/YY'),'461');


----------------
--PANIER&CONTENUPANIER--
----------------
insert into Panier values ('0001', '20', 30);
insert into ContenuPanier values('0001','1111');
insert into ContenuPanier values('0001','1112');




----------------
--COMMANDE&QUANTITEPRODUIT--
----------------
insert into commande values ('01','00002','20',TO_DATE('19/04/2022','DD/MM/YY'),2.50,'7 Promenade des Anglais','Léa Nice','06000','Nice','0687345681'); 
insert into quantiteproduit values ('01','1111',3);



