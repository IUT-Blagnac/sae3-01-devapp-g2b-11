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
VALUES('1','001','Fraise Mara des bois',1.38,'Burban producteur', 'Un parfum très prononcé de fraises des bois, une texture fondante et originale', null, 200);
INSERT INTO PRODUIT
VALUES('2','001','Fraise Gariguette',3.00,'Le jardin de Marie','Fraise Gariguette juteuse et parfumée cultivée dans un jardin en Provence',null,300);
INSERT INTO PRODUIT
VALUES('3','001','Fraise Charlotte',2.75,'Les champs de Bertrand','Fraise Charlotte ferme et aromatique cultivée dans les champs de la vallée de la Loire',null,275);
INSERT INTO PRODUIT
VALUES('4','001','Fraise Gorella',2.50,'Le marais de Paulo','Fraise Gorella justeuse et sucrée cultivé dans un marais à proximité de Toulouse',null,250);

INSERT INTO PRODUIT
VALUES('5','002','Haricot vert à filet de Pau',2.00,'Paulolo', 'Harciot vert cultivé avec passion et tendresse',null, 20);
INSERT INTO PRODUIT
VALUES('6','002','Haricot blanc d''Espelette',2.50,'Espelette BIO', 'Haricot blanc cultivé selon les méthodes biologiques dans la vallée d''Espelette',null, 30);
INSERT INTO PRODUIT
VALUES('7','002','Flageolet du Puy',3.00,'Le Puy BIO', 'Flageolet cultivé avec soin dans la région du Puy en Velay',null, 40);
INSERT INTO PRODUIT
VALUES('8','002','Haricot coco de Noirmoutier',3.50,'Noirmoutier BIO', 'Haricot coco cultivé sur l''île de Noirmoutier en agriculture biologique',null, 50);

INSERT INTO PRODUIT
VALUES('9','003','Ailes de poulet',10.81,'Boucherie Les Fontaines', 'L''un des morceaux les plus tendres de viande de poulet', null, 47);
INSERT INTO PRODUIT
VALUES('10','003','Filet de poulet',31.30,'Boucherie Les Fontaines', 'Tranche fine de viande, prélevée sur la poitrine, dans le sens de la longueur', null, 22);
INSERT INTO PRODUIT
VALUES('11','003','Pilons de poulet',8.90,'Boucherie Les Fontaines', 'Morceau charnu et très prisé, le pilon de poulet est une valeur sûre pour un repas facile et rapide', null, 36);
INSERT INTO PRODUIT
VALUES('12','003','Cuisses de poulet',12.66,'Boucherie Les Fontaines', 'Viande tendre et savoureuse qu’on aime manger à pleines dents', null, 19);

INSERT INTO PRODUIT
VALUES('13','004','Comté',17.90,'La Laiterie Toulousaine', 'Fromage au lait cru à pâte pressée.  A la fois doux, aromatique, parfois légèrement piquant, toujours parfumé', null, 33);
INSERT INTO PRODUIT
VALUES('14','004','Roquefort',25.75,'La Laiterie Toulousaine', 'Fromage au lait cru de brebis reconnaissable entre tous par sa couleur ivoire et son délicat persillage vert émeraude,', null, 52);
INSERT INTO PRODUIT
VALUES('15','004','Feta',18.61,'La Laiterie Toulousaine', 'Fromage grec typique à la texture ferme, onctueuse et à la couleur blanc ivoire, ce fromage à base de lait de brebis et de lait de chèvre', null, 15);
INSERT INTO PRODUIT
VALUES('16','004','Cheddar',18.45,'La Laiterie Toulousaine', 'Fromgae à pâte pressée typiquement britannique au lait de vache pasteurisé avec un goût puissant et intense aux notes de caramel.', null, 64);

INSERT INTO Produit VALUES ('17','10' , 'Poudre lave-vaisselle au sel de Camargue', 14.90, 'Comme Avant', 'Conçue à la main dans un atelier de Fabrication près de Marseille, cette poudre pour lave-vaisselle est une alternative naturelle qui rendra votre vaisselle propre et brillante.', 'Acide citrique, Cristaux de soude, Percarbonate de soude, Sel de Camargue', 23);

INSERT INTO Produit VALUES ('18','11','Lessive en poudre au bicarbonate', 9.90, 'Comme Avant', 'Cette lessive écologique est composée de seulement 4 ingrédients. Sa composition est simple, naturelle et efficace pour laver son linge (même blanc). Elle ne contient aucun parfum, même naturel, pour des vêtements propres et sans ordeur.', 'Citrate de sodium, Bicarbonate de soude, Cristaux de soude, Percarbonate de soude', 40);

INSERT INTO Produit VALUES ('19','008', '18-EN-1 Savon Liquide Lavande', 2.34, 'Dr. Bronners' , 'Le parfum généreux, direct et suave de la lavande, reconnaissable entre mille, reste un des parfums les plus apaisants. C’est la raison pour laquelle il est utilisé depuis toujours comme élément de détente. L’huile essentielle de lavande bio à des propriétés apaisantes pour le corps et l’esprit.', 'Eau, Cocoate de potassium, Chlorure de potassium, Olivate de potassium, Glycérine, Huilde de lavandin, Hempate de potassium, Potassium Jojobate, Huile de lavande, Acide Citrique', 12);

INSERT INTO Produit VALUES ('20','3', 'Nettoyant Universel', 2.99, 'Method', 'Ce nettoyant universel de method est à base d ingrédients biodégradables', 'Eau, Capryl Glucoside, Laureth-7, Tetrasodium, Glumatate Diacetate, Parfum, Limonene, Potassium Hydroxique, Hexyl, Cinnamal, Colorant', 34);

INSERT INTO Produit VALUES ('21','11','Lessive liquide hypoallergénique 5l', 26.20, 'Etamin du Lys', 'Idéale Pour le textile des bébés, jeunes enfants et tous ceux qui ont une peau sensible. Sans agent de blanchiment, efficace aussi bien à la main qu''en machine et à basse température, elle vous laisse un linge propre et doux!', 'sucrières, palmistes, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES ('22','10','Détergent à vaisselle bio 5l', 18.50, 'Eco-Clean', 'Notre détergent à vaisselle biologique est fabriqué à partir d''ingrédients naturels et est doux pour les mains. Il laisse votre vaisselle brillante et propre sans utiliser de produits chimiques agressifs.', 'eau, amidon de maïs, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

INSERT INTO Produit VALUES ('23','3','Nettoyant multi-surface bio 500ml', 9.99, 'Verte Ville', 'Notre nettoyant multi-surface biologique est idéal pour tous vos besoins de nettoyage quotidiens. Fabriqué à partir d''ingrédients naturels, il est doux pour les surfaces et pour l''environnement.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES ('24','11','Lessive en poudre hypoallergénique 1kg', 12.99, 'Eco-Lavage', 'Notre lessive en poudre hypoallergénique est douce pour les peaux sensibles et efficace pour enlever les taches difficiles. Fabriquée à partir d''ingrédients naturels, elle est sûre pour votre famille et pour l''environnement.', 'sucrières, palmistes, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 35);

INSERT INTO Produit VALUES ('25','18','Déodorant pour les poubelles bio 500ml', 6.99, 'Odeur Fraîche', 'Notre déodorant pour les poubelles biologique est fabriqué à partir d''ingrédients naturels et est doux pour l''environnement. Il neutralise les mauvaises odeurs pour laisser votre poubelle fraîche et propre.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 40);

INSERT INTO Produit VALUES ('26','12','Nettoyant pour WC bio 750ml', 7.49, 'Eco-Toilette', 'Notre nettoyant pour WC biologique est efficace pour enlever les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs. Fabriqué à partir d''ingrédients naturels, il est sûr pour votre famille et pour l''environnement.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 35);

INSERT INTO Produit VALUES ('27','17','Nettoyant pour sols bio 1l', 9.99, 'Sol Propre', 'Notre nettoyant pour sols biologique est doux pour les surfaces et l''environnement. Il laisse vos sols propres et brillants sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES ('28','13','Nettoyant pour meubles en bois bio 500ml', 12.49, 'Bois Brillant', 'Notre nettoyant pour meubles en bois biologique est doux pour les surfaces et l''environnement. Il nourrit et protège vos meubles en bois tout en les laissant brillants et propres.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES ('29','19','Nettoyant pour vitres bio 500ml', 8.99, 'Vitres Propres', 'Notre nettoyant pour vitres biologique est doux pour les surfaces et l''environnement. Il laisse vos vitres propres et brillantes sans laisser de traces.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

INSERT INTO Produit VALUES ('30','16','Nettoyant pour cuisines bio 500ml', 9.99, 'Cuisine Propre', 'Notre nettoyant pour cuisines biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES ('31','15','Nettoyant pour salle de bain bio 500ml', 9.99, 'Salle de Bain Propre', 'Notre nettoyant pour salle de bain biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 30);

INSERT INTO Produit VALUES ('32','14','Nettoyant pour jardin bio 1l', 12.99, 'Jardin Propre', 'Notre nettoyant pour jardin biologique est doux pour les surfaces et l''environnement. Il enlève efficacement les taches et les mauvaises odeurs sans utiliser de produits chimiques agressifs.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 25);

INSERT INTO Produit VALUES ('33','13','Nettoyant pour meubles en cuir bio 250ml', 14.99, 'Cuir Propre', 'Notre nettoyant pour meubles en cuir biologique est doux pour les surfaces et l''environnement. Il nourrit et protège vos meubles en cuir tout en les laissant brillants et propres.', 'eau, coco, savon, sodium hydroxymethylglycinate, parfum, eau, florale de camomille, sel, séquestrants', 20);

INSERT INTO PRODUIT
VALUES('34','007','Savon de marseille liquide à l''huile d''olive 1L',11.48,'Fer à cheval', 'Savon de Marseille Liquide à l''Huile d''Olive 1L, idéal pour la toilette des mains et du corps, il lave tout en douceur et laisse un agérable parfum.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Olea Europeae fruit oil.', 200);
INSERT INTO PRODUIT
VALUES('35','008','Shampooing noix de coco 237ml','DESERT ESSENCE',9.59, 'L''huile de noix de coco bio nourrit intensément vos cheveux abimés leur donne force et brillance tout en lissant les frisottis. Ce shampoing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived), Decyl Glucoside (Coconut and Corn Derived), Propanediol (Corn Derived), Coco-Glucoside (Coconut Derived), Butyrospermum Parkii (Shea) Butter, Coco Nucifera (Coconut) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Cannabis Sativa (Hemp) Seed Oil, Olea Europaea (Olive) Fruit Oil, Dehydroacetic Acid, Glycerin, Hydrogenated Coco-Glycerides (Coconut Derived), Sodium Chloride, Potassium Sorbate (Fruit Derived), Lauryl Glucoside (Plant Derived), Benzyl Alcohol, Citric Acid, Stearyl Citrate (Vegetable Derived), Fragrance (Parfum)', 58);
INSERT INTO PRODUIT
VALUES('36','009','Huile démaquillante toute douce lait d''amande 100ml','CLÉMENCE & VIVIEN',8.80, 'Huile démaquillante toute douce parfum lait d''amande, une formule saine qui démaquille efficacement, nettoie parfaitement et laisse une peau douce et délicatement parfumée. ', 'Helianthus annuus seed oil (tournesol), polyglyceryl 4oléate, carthamus tinctorius seed oil (carthame), sesamum indicum seed oil (sésame), parfum naturel, tocopherol (vitamine E) & helianthus annus seed oil.', 84);
INSERT INTO PRODUIT
VALUES('37','007','Savon de marseille liquide à l''huile de coco 1L',12.50,'Cocotier', 'Savon de Marseille Liquide à l''Huile de Coco 1L, idéal pour la toilette des mains et du corps, il nettoie en profondeur et laisse la peau douce et hydratée.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Cocos Nucifera Oil.', 150);
INSERT INTO PRODUIT
VALUES('38','008','Shampooing au romarin 237ml','DESERT ESSENCE',10.49, 'Le romarin bio stimule la croissance des cheveux et aide à réguler la production de sébum, tout en nourrissant et en protégeant les cheveux. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 52);
INSERT INTO PRODUIT
VALUES('39','009','Gel nettoyant purifiant au romarin 100ml','NATURAL BEAUTY',9.50, 'Gel nettoyant purifiant au romarin, une formule biologique qui nettoie en profondeur et purifie la peau sans l''agresser. Convient à tous les types de peau. ', 'Aqua (eau), cocamidopropyl betaine, sodium coco-sulfate, decyl glucoside, glycerin, rosmarinus officinalis leaf oil (romarin), xanthan gum, benzyl alcohol, sodium benzoate, citric acid, limonene.', 88);
INSERT INTO PRODUIT
VALUES('40','007','Savon de marseille liquide aux plantes aromatiques 1L',13.25,'Herbes aromatiques', 'Savon de Marseille Liquide aux Plantes Aromatiques 1L, idéal pour la toilette des mains et du corps, il apporte une fraîcheur naturelle et tonifiante grâce à ses plantes aromatiques.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Extracts of Rosmarinus Officinalis, Thymus Vulgaris, Mentha Piperita.', 125);
INSERT INTO PRODUIT
VALUES('41','008','Shampooing au thym 237ml','DESERT ESSENCE',11.99, 'Le thym bio est connu pour ses propriétés antibactériennes et antifongiques, il aide à lutter contre les pellicules et à réguler le cuir chevelu. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 46);
INSERT INTO PRODUIT
VALUES('42','009','Crème hydratante à l''aloe vera 50ml','EVE & ADAM',12.90, 'Crème hydratante à l''aloe vera, une formule biologique qui hydrate en profondeur et nourrit la peau sans laisser de film gras. Convient aux peaux sensibles. ', 'Aqua (eau), aloe barbadensis leaf juice (aloe vera), prunus amygdalus dulcis oil (amande douce), glyceryl stearate, cetearyl alcohol, cetyl palmitate, cocos nucifera oil (noix de coco), butyrospermum parkii butter (beurre de karité), sodium stearoyl lactylate, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 72);
INSERT INTO PRODUIT
VALUES('43','007','Savon de marseille liquide au miel 1L',14.75,'Miel', 'Savon de Marseille Liquide au Miel 1L, idéal pour la toilette des mains et du corps, il nourrit et adoucit la peau grâce à ses propriétés hydratantes et apaisantes.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Mel.', 100);
INSERT INTO PRODUIT
VALUES('44','008','Shampooing au romarin et au thym 237ml','DESERT ESSENCE',13.75, 'Le romarin et le thym bio sont deux plantes aromatiques reconnues pour leurs propriétés nourrissantes et antifongiques. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 40);
INSERT INTO PRODUIT
VALUES('45','009','Sérum revitalisant au thé vert 50ml','GREEN TEA LAB',19.90, 'Sérum revitalisant au thé vert, une formule biologique qui booste l''éclat et la vitalité de la peau grâce à son action antioxydante. Convient à tous les types de peau. ', 'Aqua (eau), camellia sinensis leaf extract (thé vert), glycerin, propanediol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 60);
INSERT INTO PR009ODUIT
VALUES('46','009','Crème nourrissante à la noix de coco 50ml','COCONUT LAB',24.90, 'Crème nourrissante à la noix de coco, une formule biologique qui nourrit en profondeur et hydrate la peau grâce à ses propriétés hydratantes et nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), cocos nucifera oil (huile de noix de coco), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 50);
INSERT INTO PRODUIT
VALUES('47','009','Gommage visage à l''abricot 50ml','APRICOT LAB',19.90, 'Gommage visage à l''abricot, une formule biologique qui exfolie en douceur et revigore la peau grâce à ses propriétés exfoliantes et nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), prunus armeniaca seed powder (poudre d''abricot), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 45);
INSERT INTO PRODUIT
VALUES('48','009','Masque purifiant à la menthe 50ml','MINT LAB',22.90, 'Masque purifiant à la menthe, une formule biologique qui purifie et tonifie la peau grâce à ses propriétés rafraîchissantes et astringentes. Convient à tous les types de peau. ', 'Aqua (eau), mentha piperita leaf extract (extrait de menthe), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 55);
INSERT INTO PRODUIT
VALUES('49','009','Crème hydratante au jojoba 50ml','NATURAL BEAUTY',24.50, 'Crème hydratante au jojoba, une formule biologique qui nourrit et régénère la peau en profondeur grâce à ses propriétés nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), simmondsia chinensis seed oil (jojoba), glycerin, cetearyl olivate, sorbitan olivate, cetyl palmitate, panthenol, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 45);
INSERT INTO PRODUIT
VALUES('50','009','Sérum anti-âge à la bave d''escargot 50ml','SNAIL NATURE',29.99, 'Sérum anti-âge à la bave d''escargot, une formule biologique qui lisse et raffermit la peau grâce à ses propriétés régénérantes. Convient à tous les types de peau. ', 'Aqua (eau), snail secretion filtrate, glycerin, propanediol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 30);

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
--COMMANDE&QUANTITEPRODUIT--
----------------


-----------------------------
Insert into quantiteProduit values('21','49',1);
Insert into quantiteProduit values('47','16',9);
Insert into quantiteProduit values('38','3',2);
Insert into quantiteProduit values('17','9',6);
Insert into quantiteProduit values('54','44',8);
Insert into quantiteProduit values('89','37',5);
Insert into quantiteProduit values('52','39',1);
Insert into quantiteProduit values('30','8',7);
Insert into quantiteProduit values('63','31',1);
Insert into quantiteProduit values('86','42',3);
Insert into quantiteProduit values('56','38',5);
Insert into quantiteProduit values('29','27',2);
Insert into quantiteProduit values('95','44',1);
Insert into quantiteProduit values('93','2',6);
Insert into quantiteProduit values('34','28',6);
Insert into quantiteProduit values('69','19',3);
Insert into quantiteProduit values('79','49',8);
Insert into quantiteProduit values('97','5',8);
Insert into quantiteProduit values('73','18',6);
Insert into quantiteProduit values('35','15',3);
Insert into quantiteProduit values('19','0',7);
Insert into quantiteProduit values('76','17',7);
Insert into quantiteProduit values('70','49',5);
Insert into quantiteProduit values('64','42',3);
Insert into quantiteProduit values('90','23',6);
Insert into quantiteProduit values('38','0',10);
Insert into quantiteProduit values('47','10',7);
Insert into quantiteProduit values('77','45',2);
Insert into quantiteProduit values('36','10',3);
Insert into quantiteProduit values('6','44',9);
Insert into quantiteProduit values('83','48',1);
Insert into quantiteProduit values('94','9',2);
Insert into quantiteProduit values('34','47',4);
Insert into quantiteProduit values('43','2',9);
Insert into quantiteProduit values('5','16',1);
Insert into quantiteProduit values('93','40',6);
Insert into quantiteProduit values('10','2',10);
Insert into quantiteProduit values('23','16',9);
Insert into quantiteProduit values('79','23',9);
Insert into quantiteProduit values('79','25',8);
Insert into quantiteProduit values('21','27',5);
Insert into quantiteProduit values('90','1',2);
Insert into quantiteProduit values('76','8',9);
Insert into quantiteProduit values('84','30',1);
Insert into quantiteProduit values('33','12',2);
Insert into quantiteProduit values('57','22',4);
Insert into quantiteProduit values('9','15',8);
Insert into quantiteProduit values('47','34',7);
Insert into quantiteProduit values('80','43',1);
Insert into quantiteProduit values('45','41',8);
Insert into quantiteProduit values('25','15',8);
Insert into quantiteProduit values('26','31',1);
Insert into quantiteProduit values('0','45',2);
Insert into quantiteProduit values('78','21',6);
Insert into quantiteProduit values('76','1',8);
Insert into quantiteProduit values('86','37',5);
Insert into quantiteProduit values('99','23',4);
Insert into quantiteProduit values('81','37',3);
Insert into quantiteProduit values('3','32',9);
Insert into quantiteProduit values('79','25',8);
Insert into quantiteProduit values('52','11',1);
Insert into quantiteProduit values('77','34',2);
Insert into quantiteProduit values('28','29',7);
Insert into quantiteProduit values('7','36',2);
Insert into quantiteProduit values('40','49',10);
Insert into quantiteProduit values('90','43',7);
Insert into quantiteProduit values('28','14',10);
Insert into quantiteProduit values('81','7',1);
Insert into quantiteProduit values('80','16',10);
Insert into quantiteProduit values('69','22',5);
Insert into quantiteProduit values('19','11',1);
Insert into quantiteProduit values('94','11',6);
Insert into quantiteProduit values('4','2',4);
Insert into quantiteProduit values('21','17',3);
Insert into quantiteProduit values('63','34',6);
Insert into quantiteProduit values('65','10',2);
Insert into quantiteProduit values('67','26',3);
Insert into quantiteProduit values('45','4',5);
Insert into quantiteProduit values('11','11',2);
Insert into quantiteProduit values('86','47',7);
Insert into quantiteProduit values('78','41',1);
Insert into quantiteProduit values('79','36',7);
Insert into quantiteProduit values('31','27',8);
Insert into quantiteProduit values('37','9',7);
Insert into quantiteProduit values('7','10',10);
Insert into quantiteProduit values('39','26',2);
Insert into quantiteProduit values('89','35',8);
Insert into quantiteProduit values('29','26',9);
Insert into quantiteProduit values('29','44',5);
Insert into quantiteProduit values('68','24',3);
Insert into quantiteProduit values('82','19',7);
Insert into quantiteProduit values('83','21',10);
Insert into quantiteProduit values('44','7',10);
Insert into quantiteProduit values('46','25',5);
Insert into quantiteProduit values('64','29',9);
Insert into quantiteProduit values('30','48',1);
Insert into quantiteProduit values('22','47',5);
Insert into quantiteProduit values('46','43',9);
Insert into quantiteProduit values('96','37',10);
Insert into quantiteProduit values('41','44',7);
Insert into quantiteProduit values('97','23',7);
Insert into quantiteProduit values('89','31',2);
Insert into quantiteProduit values('98','10',2);
Insert into quantiteProduit values('32','49',6);
Insert into quantiteProduit values('29','16',4);
Insert into quantiteProduit values('83','17',4);
Insert into quantiteProduit values('14','18',6);
Insert into quantiteProduit values('90','36',2);
Insert into quantiteProduit values('44','49',2);
Insert into quantiteProduit values('31','35',4);
Insert into quantiteProduit values('31','2',1);
Insert into quantiteProduit values('73','20',8);
Insert into quantiteProduit values('78','25',9);
Insert into quantiteProduit values('51','14',8);
Insert into quantiteProduit values('67','6',5);
Insert into quantiteProduit values('56','26',5);
Insert into quantiteProduit values('36','15',9);
Insert into quantiteProduit values('31','14',1);
Insert into quantiteProduit values('34','5',6);
Insert into quantiteProduit values('76','46',4);
Insert into quantiteProduit values('47','44',2);
Insert into quantiteProduit values('54','11',8);
Insert into quantiteProduit values('22','37',7);
Insert into quantiteProduit values('26','13',8);
Insert into quantiteProduit values('62','41',8);
Insert into quantiteProduit values('96','4',10);
Insert into quantiteProduit values('51','21',10);
Insert into quantiteProduit values('54','1',4);
Insert into quantiteProduit values('96','38',1);
Insert into quantiteProduit values('48','36',9);
Insert into quantiteProduit values('40','24',7);
Insert into quantiteProduit values('24','0',7);
Insert into quantiteProduit values('62','10',4);
Insert into quantiteProduit values('51','29',2);
Insert into quantiteProduit values('41','22',3);
Insert into quantiteProduit values('87','12',5);
Insert into quantiteProduit values('17','23',9);
Insert into quantiteProduit values('60','19',7);
Insert into quantiteProduit values('13','27',1);
Insert into quantiteProduit values('34','1',10);
Insert into quantiteProduit values('36','6',3);
Insert into quantiteProduit values('58','12',6);
Insert into quantiteProduit values('73','39',3);
Insert into quantiteProduit values('70','28',8);
Insert into quantiteProduit values('80','12',1);
Insert into quantiteProduit values('11','6',4);
Insert into quantiteProduit values('65','9',7);
Insert into quantiteProduit values('2','46',1);
Insert into quantiteProduit values('98','37',2);
Insert into quantiteProduit values('69','22',4);
Insert into quantiteProduit values('20','26',3);
Insert into quantiteProduit values('60','47',6);
Insert into quantiteProduit values('86','33',3);
Insert into quantiteProduit values('12','37',6);
Insert into quantiteProduit values('36','11',8);
Insert into quantiteProduit values('45','27',8);
Insert into quantiteProduit values('49','9',6);
Insert into quantiteProduit values('37','6',8);
Insert into quantiteProduit values('9','42',8);
Insert into quantiteProduit values('8','14',6);
Insert into quantiteProduit values('16','6',5);
Insert into quantiteProduit values('99','9',5);
Insert into quantiteProduit values('65','44',4);
Insert into quantiteProduit values('14','27',10);
Insert into quantiteProduit values('25','47',7);
Insert into quantiteProduit values('77','25',3);
Insert into quantiteProduit values('33','11',2);
Insert into quantiteProduit values('89','10',6);
Insert into quantiteProduit values('96','7',6);
Insert into quantiteProduit values('25','42',2);
Insert into quantiteProduit values('16','17',3);
Insert into quantiteProduit values('46','27',8);
Insert into quantiteProduit values('38','41',6);
Insert into quantiteProduit values('57','3',8);
Insert into quantiteProduit values('71','34',9);
Insert into quantiteProduit values('50','23',3);
Insert into quantiteProduit values('9','48',3);
Insert into quantiteProduit values('27','31',7);
Insert into quantiteProduit values('91','35',7);
Insert into quantiteProduit values('38','40',2);
Insert into quantiteProduit values('63','25',2);
Insert into quantiteProduit values('55','42',5);
Insert into quantiteProduit values('89','42',4);
Insert into quantiteProduit values('73','32',2);
Insert into quantiteProduit values('24','1',9);
Insert into quantiteProduit values('2','20',5);
Insert into quantiteProduit values('74','17',6);
Insert into quantiteProduit values('33','17',1);
Insert into quantiteProduit values('37','24',1);
Insert into quantiteProduit values('58','35',8);
Insert into quantiteProduit values('57','9',10);
Insert into quantiteProduit values('69','48',9);
Insert into quantiteProduit values('88','34',3);
Insert into quantiteProduit values('81','36',3);
Insert into quantiteProduit values('48','35',9);
Insert into quantiteProduit values('36','32',2);
Insert into quantiteProduit values('45','35',5);
Insert into quantiteProduit values('71','33',10);
Insert into quantiteProduit values('9','10',4);
Insert into quantiteProduit values('30','43',6);
Insert into quantiteProduit values('48','45',4);
Insert into quantiteProduit values('31','46',3);
Insert into quantiteProduit values('12','0',4);
Insert into quantiteProduit values('44','44',4);
Insert into quantiteProduit values('78','39',2);
Insert into quantiteProduit values('32','38',8);
Insert into quantiteProduit values('22','41',7);
Insert into quantiteProduit values('57','17',4);
Insert into quantiteProduit values('18','49',4);
Insert into quantiteProduit values('91','24',6);
Insert into quantiteProduit values('31','9',10);
Insert into quantiteProduit values('98','26',7);
Insert into quantiteProduit values('81','47',6);
Insert into quantiteProduit values('11','10',2);
Insert into quantiteProduit values('79','19',6);
Insert into quantiteProduit values('75','47',1);
Insert into quantiteProduit values('36','35',10);
Insert into quantiteProduit values('93','48',5);
Insert into quantiteProduit values('23','12',1);
Insert into quantiteProduit values('35','47',2);
Insert into quantiteProduit values('11','42',8);
Insert into quantiteProduit values('10','42',6);
Insert into quantiteProduit values('48','31',4);
Insert into quantiteProduit values('72','31',7);
Insert into quantiteProduit values('37','45',3);
Insert into quantiteProduit values('35','4',9);
Insert into quantiteProduit values('52','41',10);
Insert into quantiteProduit values('94','47',9);
Insert into quantiteProduit values('60','7',5);
Insert into quantiteProduit values('72','23',2);
Insert into quantiteProduit values('77','5',7);
Insert into quantiteProduit values('72','28',7);
Insert into quantiteProduit values('62','16',7);
Insert into quantiteProduit values('85','35',5);
Insert into quantiteProduit values('5','41',4);
Insert into quantiteProduit values('74','43',5);
Insert into quantiteProduit values('88','20',5);
Insert into quantiteProduit values('5','8',5);
Insert into quantiteProduit values('55','3',3);
Insert into quantiteProduit values('63','38',8);
Insert into quantiteProduit values('79','18',4);
Insert into quantiteProduit values('50','2',1);
Insert into quantiteProduit values('11','3',1);
Insert into quantiteProduit values('1','31',6);
Insert into quantiteProduit values('91','41',10);
Insert into quantiteProduit values('86','1',4);
Insert into quantiteProduit values('37','45',7);
Insert into quantiteProduit values('42','37',3);
Insert into quantiteProduit values('93','2',8);
Insert into quantiteProduit values('53','2',4);
Insert into quantiteProduit values('91','49',1);
Insert into quantiteProduit values('12','19',6);
Insert into quantiteProduit values('97','3',7);
Insert into quantiteProduit values('89','26',1);
Insert into quantiteProduit values('12','3',5);
Insert into quantiteProduit values('88','14',4);
Insert into quantiteProduit values('64','27',5);
Insert into quantiteProduit values('79','8',3);
Insert into quantiteProduit values('53','48',4);
Insert into quantiteProduit values('46','31',10);
Insert into quantiteProduit values('96','40',10);
Insert into quantiteProduit values('67','12',5);
Insert into quantiteProduit values('72','49',1);
Insert into quantiteProduit values('97','11',5);
Insert into quantiteProduit values('82','5',7);
Insert into quantiteProduit values('32','27',7);
Insert into quantiteProduit values('78','7',6);
Insert into quantiteProduit values('99','46',6);
Insert into quantiteProduit values('74','24',9);
Insert into quantiteProduit values('42','9',4);
Insert into quantiteProduit values('14','38',4);
Insert into quantiteProduit values('20','12',4);
Insert into quantiteProduit values('22','33',1);
Insert into quantiteProduit values('3','40',6);
Insert into quantiteProduit values('94','26',8);
Insert into quantiteProduit values('54','36',5);
Insert into quantiteProduit values('69','18',5);
Insert into quantiteProduit values('20','24',6);
Insert into quantiteProduit values('30','29',3);
Insert into quantiteProduit values('91','8',6);
Insert into quantiteProduit values('21','2',2);
Insert into quantiteProduit values('71','15',10);
Insert into quantiteProduit values('7','10',10);
Insert into quantiteProduit values('43','12',8);
Insert into quantiteProduit values('6','6',10);
Insert into quantiteProduit values('40','36',1);
Insert into quantiteProduit values('38','37',7);
Insert into quantiteProduit values('63','13',9);
Insert into quantiteProduit values('94','39',6);
Insert into quantiteProduit values('95','9',6);
Insert into quantiteProduit values('88','17',10);
Insert into quantiteProduit values('22','5',1);
Insert into quantiteProduit values('17','36',2);
Insert into quantiteProduit values('32','49',3);
Insert into quantiteProduit values('20','30',2);
Insert into quantiteProduit values('97','33',7);
Insert into quantiteProduit values('81','48',4);
Insert into quantiteProduit values('10','15',6);
Insert into quantiteProduit values('30','19',6);
Insert into quantiteProduit values('87','13',9);
Insert into quantiteProduit values('87','21',7);
Insert into quantiteProduit values('57','11',5);
Insert into quantiteProduit values('44','31',10);
Insert into quantiteProduit values('71','18',8);
Insert into quantiteProduit values('76','41',7);
Insert into quantiteProduit values('51','44',8);
Insert into quantiteProduit values('68','24',5);
Insert into quantiteProduit values('0','47',6);
Insert into quantiteProduit values('33','44',4);
Insert into quantiteProduit values('72','40',9);
Insert into quantiteProduit values('2','9',9);
Insert into quantiteProduit values('1','22',2);
Insert into quantiteProduit values('34','9',5);
Insert into quantiteProduit values('90','34',1);
Insert into quantiteProduit values('1','36',10);
Insert into quantiteProduit values('46','33',8);
Insert into quantiteProduit values('84','30',4);
Insert into quantiteProduit values('40','22',6);
Insert into quantiteProduit values('84','19',9);
Insert into quantiteProduit values('71','20',8);
Insert into quantiteProduit values('71','0',1);
Insert into quantiteProduit values('51','25',8);
Insert into quantiteProduit values('64','6',6);
Insert into quantiteProduit values('48','32',10);
Insert into quantiteProduit values('99','10',7);
Insert into quantiteProduit values('88','19',10);
Insert into quantiteProduit values('43','15',5);
Insert into quantiteProduit values('43','25',9);
Insert into quantiteProduit values('44','34',1);
Insert into quantiteProduit values('2','12',9);
Insert into quantiteProduit values('19','8',10);
Insert into quantiteProduit values('9','43',10);
Insert into quantiteProduit values('35','29',5);
Insert into quantiteProduit values('54','31',4);
Insert into quantiteProduit values('37','49',10);
Insert into quantiteProduit values('60','14',4);
Insert into quantiteProduit values('26','19',3);
Insert into quantiteProduit values('28','5',7);
Insert into quantiteProduit values('28','15',2);
Insert into quantiteProduit values('74','17',1);
Insert into quantiteProduit values('85','14',8);
Insert into quantiteProduit values('47','21',1);
Insert into quantiteProduit values('50','40',7);
Insert into quantiteProduit values('40','10',6);
Insert into quantiteProduit values('21','1',9);
Insert into quantiteProduit values('75','36',5);
Insert into quantiteProduit values('67','8',9);
Insert into quantiteProduit values('99','32',5);
Insert into quantiteProduit values('25','6',5);
Insert into quantiteProduit values('2','18',9);
Insert into quantiteProduit values('24','20',5);
Insert into quantiteProduit values('14','4',4);
Insert into quantiteProduit values('91','28',6);
Insert into quantiteProduit values('77','2',6);
Insert into quantiteProduit values('21','15',10);
Insert into quantiteProduit values('78','34',9);
Insert into quantiteProduit values('94','9',7);
Insert into quantiteProduit values('97','2',7);
Insert into quantiteProduit values('2','27',6);
Insert into quantiteProduit values('47','13',10);
Insert into quantiteProduit values('46','15',10);
Insert into quantiteProduit values('47','17',4);
Insert into quantiteProduit values('58','35',9);
Insert into quantiteProduit values('91','45',7);
Insert into quantiteProduit values('11','41',1);
Insert into quantiteProduit values('53','36',7);
Insert into quantiteProduit values('14','39',6);
Insert into quantiteProduit values('38','25',3);
Insert into quantiteProduit values('24','23',5);
Insert into quantiteProduit values('20','32',6);
Insert into quantiteProduit values('72','19',2);
Insert into quantiteProduit values('84','37',1);
Insert into quantiteProduit values('39','47',8);
Insert into quantiteProduit values('95','48',9);
Insert into quantiteProduit values('75','9',8);
Insert into quantiteProduit values('96','10',8);
Insert into quantiteProduit values('54','26',7);
Insert into quantiteProduit values('49','8',6);
Insert into quantiteProduit values('74','24',8);
Insert into quantiteProduit values('72','0',10);
Insert into quantiteProduit values('4','16',3);
Insert into quantiteProduit values('84','1',10);
Insert into quantiteProduit values('65','37',7);
Insert into quantiteProduit values('64','34',6);
Insert into quantiteProduit values('19','19',2);
Insert into quantiteProduit values('55','21',1);
Insert into quantiteProduit values('5','35',8);
Insert into quantiteProduit values('11','34',8);
Insert into quantiteProduit values('16','13',10);
Insert into quantiteProduit values('43','19',2);
Insert into quantiteProduit values('91','44',9);
Insert into quantiteProduit values('16','4',8);
Insert into quantiteProduit values('86','48',10);
Insert into quantiteProduit values('81','17',9);
Insert into quantiteProduit values('12','26',5);
Insert into quantiteProduit values('28','34',9);
Insert into quantiteProduit values('55','16',7);
Insert into quantiteProduit values('34','5',1);
Insert into quantiteProduit values('12','34',7);
Insert into quantiteProduit values('18','8',7);
Insert into quantiteProduit values('75','24',3);
Insert into quantiteProduit values('9','43',2);
Insert into quantiteProduit values('18','33',8);
Insert into quantiteProduit values('0','13',6);
Insert into quantiteProduit values('60','12',7);
Insert into quantiteProduit values('66','1',5);
Insert into quantiteProduit values('19','39',5);
Insert into quantiteProduit values('57','48',5);
Insert into quantiteProduit values('94','21',5);
Insert into quantiteProduit values('43','43',8);
Insert into quantiteProduit values('98','23',7);
Insert into quantiteProduit values('16','1',5);
Insert into quantiteProduit values('86','33',6);
Insert into quantiteProduit values('64','40',2);
Insert into quantiteProduit values('65','36',10);
Insert into quantiteProduit values('75','31',9);
Insert into quantiteProduit values('23','25',6);
Insert into quantiteProduit values('59','36',6);
Insert into quantiteProduit values('56','5',2);
Insert into quantiteProduit values('42','1',7);
Insert into quantiteProduit values('39','47',8);
Insert into quantiteProduit values('91','43',2);
Insert into quantiteProduit values('68','27',9);
Insert into quantiteProduit values('12','35',8);
Insert into quantiteProduit values('40','44',6);
Insert into quantiteProduit values('55','49',4);
Insert into quantiteProduit values('52','33',3);
Insert into quantiteProduit values('77','24',10);
Insert into quantiteProduit values('64','24',4);
Insert into quantiteProduit values('83','17',7);
Insert into quantiteProduit values('91','17',2);
Insert into quantiteProduit values('12','25',3);
Insert into quantiteProduit values('62','38',7);
Insert into quantiteProduit values('16','22',1);
Insert into quantiteProduit values('42','2',7);
Insert into quantiteProduit values('77','7',9);
Insert into quantiteProduit values('53','13',2);
Insert into quantiteProduit values('95','47',7);
Insert into quantiteProduit values('24','37',7);
Insert into quantiteProduit values('34','33',8);
Insert into quantiteProduit values('47','17',7);
Insert into quantiteProduit values('64','14',3);
Insert into quantiteProduit values('0','37',1);
Insert into quantiteProduit values('34','14',9);
Insert into quantiteProduit values('38','5',8);
Insert into quantiteProduit values('36','14',2);
Insert into quantiteProduit values('65','45',5);
Insert into quantiteProduit values('16','26',8);
Insert into quantiteProduit values('78','48',1);
Insert into quantiteProduit values('29','23',4);
Insert into quantiteProduit values('22','5',5);
Insert into quantiteProduit values('20','23',6);
Insert into quantiteProduit values('82','14',5);
Insert into quantiteProduit values('64','35',7);
Insert into quantiteProduit values('61','2',5);
Insert into quantiteProduit values('87','40',4);
Insert into quantiteProduit values('92','31',3);
Insert into quantiteProduit values('33','20',10);
Insert into quantiteProduit values('78','33',3);
Insert into quantiteProduit values('96','4',3);
Insert into quantiteProduit values('34','17',6);
Insert into quantiteProduit values('97','7',9);
Insert into quantiteProduit values('79','33',3);
Insert into quantiteProduit values('44','1',6);
Insert into quantiteProduit values('76','18',10);
Insert into quantiteProduit values('77','39',1);
Insert into quantiteProduit values('41','26',7);
Insert into quantiteProduit values('91','21',10);
Insert into quantiteProduit values('58','30',1);
Insert into quantiteProduit values('71','11',4);
Insert into quantiteProduit values('24','49',7);
Insert into quantiteProduit values('64','1',1);
Insert into quantiteProduit values('81','33',4);
Insert into quantiteProduit values('36','19',1);
Insert into quantiteProduit values('97','24',3);
Insert into quantiteProduit values('44','44',2);
Insert into quantiteProduit values('3','44',7);
Insert into quantiteProduit values('10','25',4);
Insert into quantiteProduit values('69','2',5);
Insert into quantiteProduit values('85','46',3);
Insert into quantiteProduit values('95','42',4);
Insert into quantiteProduit values('64','35',10);
Insert into quantiteProduit values('82','41',10);
Insert into quantiteProduit values('25','49',2);
Insert into quantiteProduit values('41','32',1);
Insert into quantiteProduit values('42','17',3);
Insert into quantiteProduit values('12','11',1);
Insert into quantiteProduit values('10','13',1);
Insert into quantiteProduit values('27','1',1);
Insert into quantiteProduit values('20','6',9);
Insert into quantiteProduit values('19','37',3);
Insert into quantiteProduit values('68','17',6);
Insert into quantiteProduit values('17','9',10);
Insert into quantiteProduit values('47','49',3);
Insert into quantiteProduit values('82','49',9);
Insert into quantiteProduit values('65','44',2);
Insert into quantiteProduit values('17','0',8);
Insert into quantiteProduit values('88','3',2);
Insert into quantiteProduit values('63','41',6);
Insert into quantiteProduit values('27','49',10);
Insert into quantiteProduit values('51','49',2);
Insert into quantiteProduit values('55','33',4);
Insert into quantiteProduit values('23','40',2);
Insert into quantiteProduit values('73','25',5);
Insert into quantiteProduit values('30','45',1);
Insert into quantiteProduit values('84','7',10);
Insert into quantiteProduit values('29','1',2);
Insert into quantiteProduit values('62','42',4);
Insert into quantiteProduit values('20','10',7);
Insert into quantiteProduit values('84','22',8);
Insert into quantiteProduit values('73','46',8);
Insert into quantiteProduit values('29','30',4);
Insert into quantiteProduit values('0','44',4);
Insert into quantiteProduit values('31','14',9);
Insert into quantiteProduit values('23','42',5);
Insert into quantiteProduit values('27','48',10);
Insert into quantiteProduit values('41','45',1);
Insert into quantiteProduit values('42','43',1);
Insert into quantiteProduit values('9','19',6);
Insert into quantiteProduit values('44','12',1);
Insert into quantiteProduit values('10','44',7);
Insert into quantiteProduit values('87','48',6);
Insert into quantiteProduit values('17','10',3);
Insert into quantiteProduit values('6','12',8);
Insert into quantiteProduit values('26','13',7);
Insert into quantiteProduit values('7','24',4);
Insert into quantiteProduit values('86','21',1);
Insert into quantiteProduit values('45','41',10);
Insert into quantiteProduit values('9','41',3);
Insert into quantiteProduit values('96','29',5);
Insert into quantiteProduit values('13','16',5);
Insert into quantiteProduit values('87','37',4);
Insert into quantiteProduit values('89','44',2);
Insert into quantiteProduit values('92','4',9);
Insert into quantiteProduit values('97','5',10);
Insert into quantiteProduit values('56','40',4);
Insert into quantiteProduit values('62','47',6);
Insert into quantiteProduit values('34','31',1);
Insert into quantiteProduit values('52','5',8);
Insert into quantiteProduit values('91','22',8);
Insert into quantiteProduit values('5','10',1);
Insert into quantiteProduit values('55','28',2);
Insert into quantiteProduit values('40','4',8);
Insert into quantiteProduit values('14','31',4);
Insert into quantiteProduit values('82','40',4);
Insert into quantiteProduit values('90','48',1);
Insert into quantiteProduit values('24','9',9);
Insert into quantiteProduit values('48','14',7);
Insert into quantiteProduit values('70','41',8);
Insert into quantiteProduit values('11','13',7);
Insert into quantiteProduit values('33','25',9);
Insert into quantiteProduit values('99','33',3);
Insert into quantiteProduit values('8','43',8);
Insert into quantiteProduit values('36','30',3);
Insert into quantiteProduit values('29','25',7);
Insert into quantiteProduit values('70','8',5);
Insert into quantiteProduit values('54','16',2);
Insert into quantiteProduit values('93','12',9);
Insert into quantiteProduit values('27','21',3);
Insert into quantiteProduit values('62','13',3);
Insert into quantiteProduit values('62','12',5);
Insert into quantiteProduit values('5','48',4);
Insert into quantiteProduit values('71','38',8);
Insert into quantiteProduit values('65','1',6);
Insert into quantiteProduit values('37','32',4);
Insert into quantiteProduit values('38','21',1);
Insert into quantiteProduit values('3','49',10);
Insert into quantiteProduit values('72','29',4);
Insert into quantiteProduit values('19','43',5);
Insert into quantiteProduit values('26','8',5);
Insert into quantiteProduit values('71','2',6);
Insert into quantiteProduit values('85','13',1);
Insert into quantiteProduit values('83','45',9);
Insert into quantiteProduit values('11','38',5);
Insert into quantiteProduit values('25','2',8);
Insert into quantiteProduit values('83','31',2);
Insert into quantiteProduit values('79','13',5);
Insert into quantiteProduit values('25','11',7);
Insert into quantiteProduit values('55','41',1);
Insert into quantiteProduit values('0','33',3);
Insert into quantiteProduit values('75','14',2);
Insert into quantiteProduit values('27','23',9);
Insert into quantiteProduit values('18','13',7);
Insert into quantiteProduit values('98','49',5);
Insert into quantiteProduit values('87','35',10);
Insert into quantiteProduit values('99','27',8);
Insert into quantiteProduit values('1','22',1);
Insert into quantiteProduit values('27','19',5);
Insert into quantiteProduit values('48','34',2);
Insert into quantiteProduit values('8','48',7);
Insert into quantiteProduit values('5','33',4);
Insert into quantiteProduit values('45','2',4);
Insert into quantiteProduit values('79','34',1);
Insert into quantiteProduit values('69','42',2);
Insert into quantiteProduit values('29','22',5);
Insert into quantiteProduit values('46','9',1);
Insert into quantiteProduit values('61','10',4);
Insert into quantiteProduit values('7','41',7);
Insert into quantiteProduit values('59','48',4);
Insert into quantiteProduit values('75','31',5);
Insert into quantiteProduit values('23','37',6);
Insert into quantiteProduit values('50','7',1);
Insert into quantiteProduit values('46','22',6);
Insert into quantiteProduit values('17','1',5);
Insert into quantiteProduit values('27','35',6);
Insert into quantiteProduit values('10','46',3);
Insert into quantiteProduit values('12','13',8);
Insert into quantiteProduit values('59','2',6);
Insert into quantiteProduit values('48','27',4);
Insert into quantiteProduit values('79','36',8);
Insert into quantiteProduit values('45','44',4);
Insert into quantiteProduit values('21','2',6);
Insert into quantiteProduit values('28','15',9);
Insert into quantiteProduit values('96','14',2);
Insert into quantiteProduit values('92','14',7);
Insert into quantiteProduit values('2','11',8);
Insert into quantiteProduit values('38','34',10);
Insert into quantiteProduit values('77','29',5);
Insert into quantiteProduit values('61','16',1);
Insert into quantiteProduit values('55','33',9);
Insert into quantiteProduit values('98','14',9);
Insert into quantiteProduit values('39','41',7);
Insert into quantiteProduit values('72','38',7);
Insert into quantiteProduit values('64','15',1);
Insert into quantiteProduit values('26','5',1);
Insert into quantiteProduit values('97','2',6);
Insert into quantiteProduit values('53','30',3);
Insert into quantiteProduit values('4','31',8);
Insert into quantiteProduit values('76','14',4);
Insert into quantiteProduit values('52','34',3);
Insert into quantiteProduit values('72','10',8);
Insert into quantiteProduit values('51','27',3);
Insert into quantiteProduit values('63','22',5);
Insert into quantiteProduit values('81','38',6);
Insert into quantiteProduit values('16','35',1);
Insert into quantiteProduit values('43','40',10);
Insert into quantiteProduit values('28','2',4);
Insert into quantiteProduit values('90','5',7);
Insert into quantiteProduit values('96','8',6);
Insert into quantiteProduit values('1','3',9);
Insert into quantiteProduit values('5','15',2);
Insert into quantiteProduit values('36','41',6);
Insert into quantiteProduit values('35','48',2);
Insert into quantiteProduit values('75','30',3);
Insert into quantiteProduit values('55','28',9);
Insert into quantiteProduit values('88','35',2);
Insert into quantiteProduit values('74','22',1);
Insert into quantiteProduit values('9','36',10);
Insert into quantiteProduit values('91','30',10);
Insert into quantiteProduit values('12','48',7);
Insert into quantiteProduit values('21','25',4);
Insert into quantiteProduit values('52','48',6);
Insert into quantiteProduit values('35','38',3);
Insert into quantiteProduit values('25','41',4);
Insert into quantiteProduit values('75','8',6);
Insert into quantiteProduit values('58','33',1);
Insert into quantiteProduit values('36','3',9);
Insert into quantiteProduit values('89','7',5);
Insert into quantiteProduit values('95','40',1);
Insert into quantiteProduit values('17','40',7);
Insert into quantiteProduit values('81','36',6);
Insert into quantiteProduit values('70','24',2);
Insert into quantiteProduit values('32','14',2);
Insert into quantiteProduit values('62','12',3);
Insert into quantiteProduit values('40','47',9);
Insert into quantiteProduit values('45','21',1);
Insert into quantiteProduit values('18','47',9);
Insert into quantiteProduit values('88','19',10);
Insert into quantiteProduit values('94','1',1);
Insert into quantiteProduit values('30','19',10);
Insert into quantiteProduit values('89','4',7);
Insert into quantiteProduit values('8','3',3);
Insert into quantiteProduit values('71','39',8);
Insert into quantiteProduit values('30','45',3);
Insert into quantiteProduit values('54','44',9);
Insert into quantiteProduit values('43','25',4);
Insert into quantiteProduit values('28','4',8);
Insert into quantiteProduit values('7','31',7);
Insert into quantiteProduit values('86','4',3);
Insert into quantiteProduit values('98','3',5);
Insert into quantiteProduit values('19','32',4);
Insert into quantiteProduit values('19','12',9);
Insert into quantiteProduit values('26','6',4);
Insert into quantiteProduit values('24','6',8);
Insert into quantiteProduit values('15','40',10);
Insert into quantiteProduit values('59','5',9);
Insert into quantiteProduit values('9','41',10);
Insert into quantiteProduit values('13','14',3);
Insert into quantiteProduit values('69','40',5);
Insert into quantiteProduit values('26','28',10);
Insert into quantiteProduit values('97','38',3);
Insert into quantiteProduit values('53','15',4);
Insert into quantiteProduit values('91','7',9);
Insert into quantiteProduit values('74','2',3);
Insert into quantiteProduit values('12','12',6);
Insert into quantiteProduit values('13','11',3);
Insert into quantiteProduit values('47','2',6);
Insert into quantiteProduit values('93','20',2);
Insert into quantiteProduit values('37','28',3);
Insert into quantiteProduit values('72','11',1);
Insert into quantiteProduit values('35','10',9);
Insert into quantiteProduit values('21','34',10);
Insert into quantiteProduit values('25','29',8);
Insert into quantiteProduit values('34','24',5);
Insert into quantiteProduit values('1','31',4);
Insert into quantiteProduit values('43','17',6);
Insert into quantiteProduit values('58','22',6);
Insert into quantiteProduit values('82','18',3);
Insert into quantiteProduit values('76','8',4);
Insert into quantiteProduit values('34','4',6);
Insert into quantiteProduit values('96','32',5);
Insert into quantiteProduit values('54','48',2);
Insert into quantiteProduit values('93','37',4);
Insert into quantiteProduit values('22','45',7);
Insert into quantiteProduit values('54','36',1);
Insert into quantiteProduit values('59','46',1);
Insert into quantiteProduit values('48','8',6);
Insert into quantiteProduit values('39','6',7);
Insert into quantiteProduit values('65','21',1);
Insert into quantiteProduit values('93','0',10);
Insert into quantiteProduit values('87','30',9);
Insert into quantiteProduit values('33','38',8);
Insert into quantiteProduit values('97','21',4);
Insert into quantiteProduit values('80','37',7);
Insert into quantiteProduit values('82','37',4);
Insert into quantiteProduit values('95','22',6);
Insert into quantiteProduit values('41','3',5);
Insert into quantiteProduit values('19','47',2);
Insert into quantiteProduit values('47','15',10);
Insert into quantiteProduit values('57','45',10);
Insert into quantiteProduit values('34','39',1);
Insert into quantiteProduit values('12','17',4);
Insert into quantiteProduit values('98','45',5);
Insert into quantiteProduit values('64','11',7);
Insert into quantiteProduit values('90','1',5);
Insert into quantiteProduit values('5','33',9);
Insert into quantiteProduit values('22','16',8);
Insert into quantiteProduit values('45','18',9);
Insert into quantiteProduit values('37','11',10);
Insert into quantiteProduit values('13','4',5);
Insert into quantiteProduit values('99','7',1);
Insert into quantiteProduit values('58','32',8);
Insert into quantiteProduit values('59','26',2);
Insert into quantiteProduit values('26','3',1);
Insert into quantiteProduit values('8','1',7);
Insert into quantiteProduit values('86','42',4);
Insert into quantiteProduit values('13','31',10);
Insert into quantiteProduit values('29','34',8);
Insert into quantiteProduit values('56','20',8);
Insert into quantiteProduit values('88','34',10);
Insert into quantiteProduit values('60','24',4);
Insert into quantiteProduit values('96','6',5);
Insert into quantiteProduit values('4','21',1);
Insert into quantiteProduit values('10','32',10);
Insert into quantiteProduit values('66','17',8);
Insert into quantiteProduit values('83','29',10);
Insert into quantiteProduit values('96','3',1);
Insert into quantiteProduit values('61','13',2);
Insert into quantiteProduit values('0','26',5);
Insert into quantiteProduit values('41','21',1);
Insert into quantiteProduit values('77','11',7);
Insert into quantiteProduit values('9','45',9);
Insert into quantiteProduit values('94','47',5);
Insert into quantiteProduit values('12','15',7);
Insert into quantiteProduit values('25','44',2);
Insert into quantiteProduit values('12','10',7);
Insert into quantiteProduit values('85','47',10);
Insert into quantiteProduit values('1','8',7);
Insert into quantiteProduit values('57','11',7);
Insert into quantiteProduit values('30','18',7);
Insert into quantiteProduit values('51','42',8);
Insert into quantiteProduit values('41','19',2);
Insert into quantiteProduit values('26','34',4);
Insert into quantiteProduit values('69','25',1);
Insert into quantiteProduit values('83','13',10);
Insert into quantiteProduit values('46','5',3);
Insert into quantiteProduit values('6','32',9);
Insert into quantiteProduit values('13','14',1);
Insert into quantiteProduit values('23','23',8);
Insert into quantiteProduit values('39','7',10);
Insert into quantiteProduit values('22','11',1);
Insert into quantiteProduit values('61','35',3);
Insert into quantiteProduit values('48','29',2);
Insert into quantiteProduit values('63','2',7);
Insert into quantiteProduit values('0','27',5);
Insert into quantiteProduit values('44','31',8);
Insert into quantiteProduit values('90','47',10);
Insert into quantiteProduit values('86','0',4);
Insert into quantiteProduit values('52','25',6);
Insert into quantiteProduit values('56','17',10);
Insert into quantiteProduit values('91','5',2);
Insert into quantiteProduit values('64','13',9);
Insert into quantiteProduit values('59','33',10);
Insert into quantiteProduit values('73','26',8);
Insert into quantiteProduit values('6','16',2);
Insert into quantiteProduit values('18','44',3);
Insert into quantiteProduit values('72','46',4);
Insert into quantiteProduit values('42','45',1);
Insert into quantiteProduit values('12','38',7);
Insert into quantiteProduit values('91','6',5);
Insert into quantiteProduit values('14','1',1);
Insert into quantiteProduit values('98','41',6);
Insert into quantiteProduit values('83','17',7);
Insert into quantiteProduit values('44','21',4);
Insert into quantiteProduit values('41','12',6);
Insert into quantiteProduit values('79','44',10);
Insert into quantiteProduit values('93','4',7);
Insert into quantiteProduit values('33','34',3);
Insert into quantiteProduit values('69','6',7);
Insert into quantiteProduit values('3','42',5);
Insert into quantiteProduit values('27','0',6);
Insert into quantiteProduit values('96','40',8);
Insert into quantiteProduit values('10','49',1);
Insert into quantiteProduit values('16','1',4);
Insert into quantiteProduit values('33','16',3);
Insert into quantiteProduit values('15','27',4);
Insert into quantiteProduit values('25','32',3);
Insert into quantiteProduit values('51','28',10);
Insert into quantiteProduit values('95','15',3);
Insert into quantiteProduit values('97','35',7);
Insert into quantiteProduit values('98','41',4);
Insert into quantiteProduit values('35','14',3);
Insert into quantiteProduit values('49','9',4);
Insert into quantiteProduit values('50','25',5);
Insert into quantiteProduit values('73','28',4);
Insert into quantiteProduit values('39','37',2);
Insert into quantiteProduit values('40','12',2);
Insert into quantiteProduit values('91','35',3);
Insert into quantiteProduit values('86','37',4);
Insert into quantiteProduit values('56','36',2);
Insert into quantiteProduit values('95','48',9);
Insert into quantiteProduit values('85','42',4);
Insert into quantiteProduit values('14','26',1);
Insert into quantiteProduit values('50','44',1);
Insert into quantiteProduit values('71','40',2);
Insert into quantiteProduit values('8','45',9);
Insert into quantiteProduit values('21','18',8);
Insert into quantiteProduit values('86','7',1);
Insert into quantiteProduit values('1','18',3);
Insert into quantiteProduit values('35','17',8);
Insert into quantiteProduit values('34','48',5);
Insert into quantiteProduit values('29','46',6);
Insert into quantiteProduit values('76','41',5);
Insert into quantiteProduit values('73','34',10);
Insert into quantiteProduit values('93','27',3);
Insert into quantiteProduit values('98','47',10);
Insert into quantiteProduit values('74','17',3);
Insert into quantiteProduit values('23','4',8);
Insert into quantiteProduit values('31','45',1);
Insert into quantiteProduit values('63','13',8);
Insert into quantiteProduit values('27','6',4);
Insert into quantiteProduit values('32','15',5);
Insert into quantiteProduit values('98','43',5);
Insert into quantiteProduit values('47','42',4);
Insert into quantiteProduit values('52','30',6);
Insert into quantiteProduit values('67','6',1);
Insert into quantiteProduit values('42','5',3);
Insert into quantiteProduit values('0','30',4);
Insert into quantiteProduit values('86','20',4);
Insert into quantiteProduit values('68','7',5);
Insert into quantiteProduit values('64','21',7);
Insert into quantiteProduit values('66','18',5);
Insert into quantiteProduit values('13','39',9);
Insert into quantiteProduit values('26','41',8);
Insert into quantiteProduit values('87','19',8);
Insert into quantiteProduit values('31','36',10);
Insert into quantiteProduit values('0','49',9);
Insert into quantiteProduit values('41','25',6);
Insert into quantiteProduit values('45','19',5);
Insert into quantiteProduit values('91','46',10);
Insert into quantiteProduit values('22','49',6);
Insert into quantiteProduit values('17','35',8);
Insert into quantiteProduit values('28','7',8);
Insert into quantiteProduit values('95','5',3);
Insert into quantiteProduit values('44','17',7);
Insert into quantiteProduit values('53','0',2);
Insert into quantiteProduit values('78','9',5);
Insert into quantiteProduit values('51','49',8);
Insert into quantiteProduit values('73','26',5);
Insert into quantiteProduit values('42','45',5);
Insert into quantiteProduit values('84','16',9);
Insert into quantiteProduit values('62','10',10);
Insert into quantiteProduit values('81','9',6);
Insert into quantiteProduit values('45','34',6);
Insert into quantiteProduit values('12','0',1);
Insert into quantiteProduit values('17','35',6);
Insert into quantiteProduit values('73','9',8);
Insert into quantiteProduit values('5','14',2);
Insert into quantiteProduit values('96','12',7);
Insert into quantiteProduit values('55','19',2);
Insert into quantiteProduit values('59','18',4);
Insert into quantiteProduit values('47','22',3);
Insert into quantiteProduit values('36','6',7);
Insert into quantiteProduit values('90','28',6);
Insert into quantiteProduit values('51','11',6);
Insert into quantiteProduit values('80','15',10);
Insert into quantiteProduit values('25','45',1);
Insert into quantiteProduit values('58','41',4);
Insert into quantiteProduit values('38','31',6);
Insert into quantiteProduit values('77','13',9);
Insert into quantiteProduit values('25','37',5);
Insert into quantiteProduit values('73','45',8);
Insert into quantiteProduit values('91','40',8);
Insert into quantiteProduit values('96','0',8);
Insert into quantiteProduit values('29','2',7);
Insert into quantiteProduit values('89','6',8);
Insert into quantiteProduit values('19','17',4);
Insert into quantiteProduit values('12','39',5);
Insert into quantiteProduit values('1','15',5);
Insert into quantiteProduit values('2','9',2);
Insert into quantiteProduit values('3','42',10);
Insert into quantiteProduit values('50','39',8);
Insert into quantiteProduit values('53','43',4);
Insert into quantiteProduit values('33','30',8);
Insert into quantiteProduit values('84','42',1);
Insert into quantiteProduit values('87','20',3);
Insert into quantiteProduit values('13','22',9);
Insert into quantiteProduit values('31','37',6);
Insert into quantiteProduit values('68','32',9);
Insert into quantiteProduit values('49','16',7);
Insert into quantiteProduit values('51','43',2);
Insert into quantiteProduit values('53','29',2);
Insert into quantiteProduit values('5','2',10);
Insert into quantiteProduit values('80','38',10);
Insert into quantiteProduit values('71','6',4);
Insert into quantiteProduit values('88','46',9);
Insert into quantiteProduit values('2','19',3);
Insert into quantiteProduit values('8','19',9);
Insert into quantiteProduit values('4','49',6);
Insert into quantiteProduit values('41','13',7);
Insert into quantiteProduit values('16','32',1);
Insert into quantiteProduit values('56','21',5);
Insert into quantiteProduit values('95','7',6);
Insert into quantiteProduit values('99','11',4);
Insert into quantiteProduit values('42','22',3);
Insert into quantiteProduit values('82','5',6);
Insert into quantiteProduit values('51','39',9);
Insert into quantiteProduit values('31','45',2);
Insert into quantiteProduit values('77','44',1);
Insert into quantiteProduit values('75','33',4);
Insert into quantiteProduit values('71','49',6);
Insert into quantiteProduit values('90','44',5);
Insert into quantiteProduit values('26','30',10);
Insert into quantiteProduit values('94','28',7);
Insert into quantiteProduit values('98','20',8);
Insert into quantiteProduit values('63','20',2);
Insert into quantiteProduit values('1','0',6);
Insert into quantiteProduit values('64','3',5);
Insert into quantiteProduit values('20','47',4);
Insert into quantiteProduit values('43','21',1);
Insert into quantiteProduit values('69','28',3);
Insert into quantiteProduit values('85','5',8);
Insert into quantiteProduit values('65','46',5);
Insert into quantiteProduit values('70','40',1);
Insert into quantiteProduit values('32','35',1);
Insert into quantiteProduit values('33','35',6);
Insert into quantiteProduit values('25','44',9);
Insert into quantiteProduit values('54','1',9);
Insert into quantiteProduit values('80','3',10);
Insert into quantiteProduit values('10','7',2);
Insert into quantiteProduit values('57','12',1);
Insert into quantiteProduit values('10','36',2);
Insert into quantiteProduit values('49','33',3);
Insert into quantiteProduit values('26','4',4);
Insert into quantiteProduit values('11','23',9);
Insert into quantiteProduit values('91','21',8);
Insert into quantiteProduit values('73','26',10);
Insert into quantiteProduit values('47','21',3);
Insert into quantiteProduit values('14','6',9);
Insert into quantiteProduit values('24','36',9);
Insert into quantiteProduit values('40','8',3);
Insert into quantiteProduit values('22','11',7);
Insert into quantiteProduit values('59','48',1);
Insert into quantiteProduit values('97','43',4);
Insert into quantiteProduit values('25','19',1);
Insert into quantiteProduit values('1','29',1);
Insert into quantiteProduit values('38','1',8);
Insert into quantiteProduit values('30','9',10);
Insert into quantiteProduit values('98','43',5);
Insert into quantiteProduit values('47','40',1);
Insert into quantiteProduit values('34','15',4);
Insert into quantiteProduit values('0','5',2);
Insert into quantiteProduit values('21','26',5);
Insert into quantiteProduit values('62','18',2);
Insert into quantiteProduit values('91','4',8);
Insert into quantiteProduit values('45','35',9);
Insert into quantiteProduit values('52','49',8);
Insert into quantiteProduit values('24','43',4);
Insert into quantiteProduit values('8','26',8);
Insert into quantiteProduit values('55','20',5);
Insert into quantiteProduit values('47','35',2);
Insert into quantiteProduit values('2','47',3);
Insert into quantiteProduit values('94','40',5);
Insert into quantiteProduit values('31','12',1);
Insert into quantiteProduit values('11','0',9);
Insert into quantiteProduit values('44','33',5);
Insert into quantiteProduit values('85','20',7);
Insert into quantiteProduit values('68','45',9);
Insert into quantiteProduit values('29','27',7);
Insert into quantiteProduit values('51','11',8);
Insert into quantiteProduit values('31','45',7);
Insert into quantiteProduit values('66','41',5);
Insert into quantiteProduit values('49','33',10);
Insert into quantiteProduit values('78','25',4);
Insert into quantiteProduit values('19','41',6);
Insert into quantiteProduit values('11','24',5);
Insert into quantiteProduit values('38','24',4);
Insert into quantiteProduit values('68','33',3);
Insert into quantiteProduit values('27','46',6);
Insert into quantiteProduit values('56','29',7);
Insert into quantiteProduit values('36','45',1);
Insert into quantiteProduit values('27','13',6);
Insert into quantiteProduit values('12','25',10);
Insert into quantiteProduit values('97','32',5);
Insert into quantiteProduit values('23','14',9);
Insert into quantiteProduit values('86','6',4);
Insert into quantiteProduit values('4','30',3);
Insert into quantiteProduit values('66','41',2);





