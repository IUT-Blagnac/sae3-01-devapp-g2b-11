
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
VALUES('35','008','Shampooing noix de coco 237ml',9.59,'DESERT ESSENCE', 'L''huile de noix de coco bio nourrit intensément vos cheveux abimés leur donne force et brillance tout en lissant les frisottis. Ce shampoing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived), Decyl Glucoside (Coconut and Corn Derived), Propanediol (Corn Derived), Coco-Glucoside (Coconut Derived), Butyrospermum Parkii (Shea) Butter, Coco Nucifera (Coconut) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Cannabis Sativa (Hemp) Seed Oil, Olea Europaea (Olive) Fruit Oil, Dehydroacetic Acid, Glycerin, Hydrogenated Coco-Glycerides (Coconut Derived), Sodium Chloride, Potassium Sorbate (Fruit Derived), Lauryl Glucoside (Plant Derived), Benzyl Alcohol, Citric Acid, Stearyl Citrate (Vegetable Derived), Fragrance (Parfum)', 58);
INSERT INTO PRODUIT
VALUES('36','009','Huile démaquillante toute douce lait d''amande 100ml',8.80,'CLÉMENCEetVIVIEN', 'Huile démaquillante toute douce parfum lait d''amande, une formule saine qui démaquille efficacement, nettoie parfaitement et laisse une peau douce et délicatement parfumée. ', 'Helianthus annuus seed oil (tournesol), polyglyceryl 4oléate, carthamus tinctorius seed oil (carthame), sesamum indicum seed oil (sésame), parfum naturel, tocopherol (vitamine E) et helianthus annus seed oil.', 84);
INSERT INTO PRODUIT
VALUES('37','007','Savon de marseille liquide à l''huile de coco 1L',12.50,'Cocotier', 'Savon de Marseille Liquide à l''Huile de Coco 1L, idéal pour la toilette des mains et du corps, il nettoie en profondeur et laisse la peau douce et hydratée.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Cocos Nucifera Oil.', 150);
INSERT INTO PRODUIT
VALUES('38','008','Shampooing au romarin 237ml',10.49,'DESERT ESSENCE', 'Le romarin bio stimule la croissance des cheveux et aide à réguler la production de sébum, tout en nourrissant et en protégeant les cheveux. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 52);
INSERT INTO PRODUIT
VALUES('39','009','Gel nettoyant purifiant au romarin 100ml',9.50,'NATURAL BEAUTY', 'Gel nettoyant purifiant au romarin, une formule biologique qui nettoie en profondeur et purifie la peau sans l''agresser. Convient à tous les types de peau. ', 'Aqua (eau), cocamidopropyl betaine, sodium coco-sulfate, decyl glucoside, glycerin, rosmarinus officinalis leaf oil (romarin), xanthan gum, benzyl alcohol, sodium benzoate, citric acid, limonene.', 88);
INSERT INTO PRODUIT
VALUES('40','007','Savon de marseille liquide aux plantes aromatiques 1L',13.25,'Herbes aromatiques', 'Savon de Marseille Liquide aux Plantes Aromatiques 1L, idéal pour la toilette des mains et du corps, il apporte une fraîcheur naturelle et tonifiante grâce à ses plantes aromatiques.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Extracts of Rosmarinus Officinalis, Thymus Vulgaris, Mentha Piperita.', 125);
INSERT INTO PRODUIT
VALUES('41','008','Shampooing au thym 237ml',11.99,'DESERT ESSENCE', 'Le thym bio est connu pour ses propriétés antibactériennes et antifongiques, il aide à lutter contre les pellicules et à réguler le cuir chevelu. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 46);
INSERT INTO PRODUIT
VALUES('42','009','Crème hydratante à l''aloe vera 50ml',12.90,'EVEetADAM', 'Crème hydratante à l''aloe vera, une formule biologique qui hydrate en profondeur et nourrit la peau sans laisser de film gras. Convient aux peaux sensibles. ', 'Aqua (eau), aloe barbadensis leaf juice (aloe vera), prunus amygdalus dulcis oil (amande douce), glyceryl stearate, cetearyl alcohol, cetyl palmitate, cocos nucifera oil (noix de coco), butyrospermum parkii butter (beurre de karité), sodium stearoyl lactylate, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 72);
INSERT INTO PRODUIT
VALUES('43','007','Savon de marseille liquide au miel 1L',14.75,'Miel', 'Savon de Marseille Liquide au Miel 1L, idéal pour la toilette des mains et du corps, il nourrit et adoucit la peau grâce à ses propriétés hydratantes et apaisantes.', 'Aqua, Potassium Cocoate, Glycerin, Potassium Olivate, Hydroxyethylcellulose, Parfum, Cocos Nucifera Oil, Tetrasodium Glutamate Diacetate, Mel.', 100);
INSERT INTO PRODUIT
VALUES('44','008','Shampooing au romarin et au thym 237ml',13.75,'DESERT ESSENCE', 'Le romarin et le thym bio sont deux plantes aromatiques reconnues pour leurs propriétés nourrissantes et antifongiques. Ce shampooing Desert Esence Organic peut-être utilisé en usage quotidien afin de redonner à vos cheveux Santé, Force et Vitalité.', 'Water (Aqua), Rosmarinus Officinalis (Rosemary) Leaf Extract, Arctium Lappa (Burdock) Root Extract, Achillea Millefolium (Yarrow) Extract, Hamamelis Virginiana (Witch Hazel) Leaf Extract, Foeniculum Vulgare (Fennel) Seed Extract, Sambucus Nigra (Black Elderberry) Flower Extract, Aloe Barbadensis Leaf Extract, Sodium Coco-Sulfate (Coconut Derived)', 40);
INSERT INTO PRODUIT
VALUES('45','009','Sérum revitalisant au thé vert 50ml',19.90,'GREEN TEA LAB', 'Sérum revitalisant au thé vert, une formule biologique qui booste l''éclat et la vitalité de la peau grâce à son action antioxydante. Convient à tous les types de peau. ', 'Aqua (eau), camellia sinensis leaf extract (thé vert), glycerin, propanediol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 60);
INSERT INTO PRODUIT
VALUES('46','009','Crème nourrissante à la noix de coco 50ml',24.90,'COCONUT LAB', 'Crème nourrissante à la noix de coco, une formule biologique qui nourrit en profondeur et hydrate la peau grâce à ses propriétés hydratantes et nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), cocos nucifera oil (huile de noix de coco), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 50);
INSERT INTO PRODUIT
VALUES('47','009','Gommage visage à l''abricot 50ml',19.90,'APRICOT LAB', 'Gommage visage à l''abricot, une formule biologique qui exfolie en douceur et revigore la peau grâce à ses propriétés exfoliantes et nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), prunus armeniaca seed powder (poudre d''abricot), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 45);
INSERT INTO PRODUIT
VALUES('48','009','Masque purifiant à la menthe 50ml',22.90,'MINT LAB', 'Masque purifiant à la menthe, une formule biologique qui purifie et tonifie la peau grâce à ses propriétés rafraîchissantes et astringentes. Convient à tous les types de peau. ', 'Aqua (eau), mentha piperita leaf extract (extrait de menthe), glycerin, cetyl alcohol, stearyl alcohol, glyceryl stearate, cetearyl glucoside, cetearyl alcohol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 55);
INSERT INTO PRODUIT
VALUES('49','009','Crème hydratante au jojoba 50ml',24.50,'NATURAL BEAUTY', 'Crème hydratante au jojoba, une formule biologique qui nourrit et régénère la peau en profondeur grâce à ses propriétés nourrissantes. Convient à tous les types de peau. ', 'Aqua (eau), simmondsia chinensis seed oil (jojoba), glycerin, cetearyl olivate, sorbitan olivate, cetyl palmitate, panthenol, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 45);
INSERT INTO PRODUIT
VALUES('50','009','Sérum anti-âge à la bave d''escargot 50ml',29.99,'SNAIL NATURE', 'Sérum anti-âge à la bave d''escargot, une formule biologique qui lisse et raffermit la peau grâce à ses propriétés régénérantes. Convient à tous les types de peau. ', 'Aqua (eau), snail secretion filtrate, glycerin, propanediol, sodium hyaluronate, panthenol, allantoin, xanthan gum, tocopherol (vitamine E), benzyl alcohol, sodium benzoate, potassium sorbate, citric acid, parfum naturel.', 30);

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
--PAIEMENTetDETAILPAIEMENT--
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
--COMMANDEetQUANTITEPRODUIT--
----------------
INSERT INTO COMMANDE VALUES ('1','0010','32','07/22',5.80,'1','1','1');
INSERT INTO COMMANDE VALUES ('2','0005','20',TO_DATE('02/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('3','0005',20,TO_DATE('05/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE VALUES ('4','0010','49',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE VALUES ('5','0006','5',TO_DATE('07/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('6','0006','3',TO_DATE('08/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('7','0002','27',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('8','0001','37',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('9','0006',20,TO_DATE('02/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('10','0006','50',TO_DATE('04/22','MM/YY'),5.80,'1','1','1');
Insert into COMMANDE VALUES ('11','0007',20,TO_DATE('01/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('12','0008','41',TO_DATE('07/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('13','0008','40',TO_DATE('12/21','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('14','0010','14',TO_DATE('11/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('15','0003','49',TO_DATE('08/22','MM/YY'),5.80,'1','1','1');
Insert into COMMANDE 
VALUES ('16','0003',20,TO_DATE('03/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('17','0001','2',TO_DATE('11/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('18','0008','27',TO_DATE('10/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('19','0010','14',TO_DATE('12/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('20','0010','20',TO_DATE('11/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('21','0009','46',TO_DATE('04/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('22','0001','41',TO_DATE('06/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('23','0004','46',TO_DATE('12/21','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('24','0004','23',TO_DATE('09/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('25','0010','16',TO_DATE('01/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('26','0004','32',TO_DATE('07/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('27','0007','35',TO_DATE('08/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('28','0006','4',TO_DATE('03/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('29','0006','10',TO_DATE('09/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('30','0003','15',TO_DATE('08/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('31','0010','46',TO_DATE('09/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('32','0005','42',TO_DATE('04/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('33','0003','40',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('34','0008',20,TO_DATE('12/22','MM/YY'),6.9,1,1,1);
Insert into COMMANDE VALUES ('35','0009',20,TO_DATE('11/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('36','0001','31',TO_DATE('02/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('37','0004','49',TO_DATE('03/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('38','0006','40',TO_DATE('03/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('39','0005','42',TO_DATE('12/21','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('40','0010',20,TO_DATE('10/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('41','0003','37',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('42','0010','6',TO_DATE('10/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('43','0001',20,TO_DATE('09/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('44','0005','48',TO_DATE('08/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('45','0001','46',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('46','0004','16',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('47','0004','15',TO_DATE('02/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('48','0010','33',TO_DATE('04/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('49','0003','35',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('50','0007','41',TO_DATE('02/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('51','0010','20',TO_DATE('11/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('52','0001','20',TO_DATE('05/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('53','0007','46',TO_DATE('03/22','MM/YY'),5.80,'1','1','1');
Insert into COMMANDE VALUES ('54','0002',20,TO_DATE('08/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('55','0006','5',TO_DATE('10/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('56','0005','31',TO_DATE('11/22','MM/YY'),5.80,'1','1','1');
Insert into COMMANDE VALUES ('57','0003',20,TO_DATE('07/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('58','0001','10',TO_DATE('08/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('59','0003','40',TO_DATE('06/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('60','0009','48',TO_DATE('09/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('61','0010','46',TO_DATE('09/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('62','0004','22',TO_DATE('11/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('63','0008','33',TO_DATE('09/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('64','0009','6',TO_DATE('03/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('65','0004',20,TO_DATE('06/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('66','0006','13',TO_DATE('12/21','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('67','0010','40',TO_DATE('12/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('68','0008','22',TO_DATE('10/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('69','0005',20,TO_DATE('05/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('70','0008','32',TO_DATE('03/22','MM/YY'),5.80,'1','1','1');
Insert into COMMANDE VALUES ('71','0006',20,TO_DATE('04/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('72','0008','10',TO_DATE('12/21','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('73','0002','2',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('74','0008','4',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('75','0002','23',TO_DATE('02/22','MM/YY'),6.90,'1','1','1');
Insert into COMMANDE VALUES ('76','0007',20,TO_DATE('03/22','MM/YY'),6.9,1,1,1);
INSERT INTO COMMANDE 
VALUES ('77','0003','40',TO_DATE('07/26','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('78','0005','16',TO_DATE('08/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('79','0007','41',TO_DATE('02/24','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('80','0003','4',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('81','0010','14',TO_DATE('11/24','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('82','0006','8',TO_DATE('12/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('83','0003','4',TO_DATE('08/23','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('84','0005','11',TO_DATE('12/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('85','0010','4',TO_DATE('12/23','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('86','0008','16',TO_DATE('04/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('87','0002','38',TO_DATE('07/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('88','0007','37',TO_DATE('05/23','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('89','0002','4',TO_DATE('09/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('90','0009','42',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('91','0007','46',TO_DATE('07/25','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('92','0009','8',TO_DATE('12/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('93','0007','42',TO_DATE('11/23','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('94','0002','2',TO_DATE('10/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('95','0009','49',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('96','0002','42',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('97','0002','22',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('98','0009','5',TO_DATE('09/24','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('99','0001','8',TO_DATE('05/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('100','0010','1',TO_DATE('11/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('101','0006','8',TO_DATE('12/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('102','0003','4',TO_DATE('08/23','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('103','0005','11',TO_DATE('12/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('104','0010','4',TO_DATE('12/23','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('105','0008','16',TO_DATE('04/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('106','0002','38',TO_DATE('07/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('107','0007','37',TO_DATE('05/23','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('108','0002','4',TO_DATE('09/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('109','0009','42',TO_DATE('07/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('110','0007','46',TO_DATE('07/25','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('111','0009','8',TO_DATE('12/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('112','0007','42',TO_DATE('11/23','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('113','0002','2',TO_DATE('10/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('114','0009','49',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('115','0002','42',TO_DATE('06/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('116','0002','22',TO_DATE('01/22','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('117','0009','5',TO_DATE('09/24','MM/YY'),5.80,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('118','0001','8',TO_DATE('05/22','MM/YY'),6.90,'1','1','1');
INSERT INTO COMMANDE 
VALUES ('119','0010','1',TO_DATE('11/22','MM/YY'),6.90,'1','1','1');

-----------------------------
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','6',3);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','14',2); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','16',2); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','16',7); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','13',5); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','19',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','23',8);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','2',2);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','3',9);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','27',1); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','23',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','11',2); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','4',10); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','17',9); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','6',4);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','24',6); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','15',1); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','17',3); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','21',4); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','17',2);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','9',3);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','14',5); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','20',4); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','18',5); 
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','26',7);  
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','19',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','10',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','17',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','30',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','21',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','6',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','26',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','6',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','28',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','23',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','14',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','26',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','17',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','1',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','24',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','11',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','21',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','15',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','19',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','25',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','7',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','1',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','8',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','30',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','20',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','21',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('66','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','14',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','11',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','13',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','21',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','30',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','21',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','6',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','27',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','24',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','8',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','7',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','20',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','14',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','19',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','2',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','16',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','10',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','2',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','21',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','9',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','27',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','3',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','25',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','7',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','8',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','14',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','13',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','25',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','13',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','27',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','12',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','29',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','15',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','18',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','22',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','29',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','14',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','27',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','11',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','12',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','23',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','7',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','17',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','13',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','23',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','29',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','16',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','3',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','16',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','9',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','21',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','14',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','24',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','27',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','22',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','1',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','10',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','27',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','28',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('15','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','30',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','14',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','19',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','4',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','8',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','22',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','22',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','3',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','4',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','15',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','7',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','24',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','16',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','13',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','7',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','9',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','14',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','17',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','21',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('15','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','18',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','29',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','28',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','28',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','28',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','17',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','16',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','24',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','6',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','21',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','26',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','4',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','6',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','23',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','9',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','11',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','25',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','20',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','19',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','16',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','19',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','9',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','1',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','13',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','14',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','16',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','6',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','17',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','16',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','21',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','30',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','16',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','8',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','3',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','27',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','6',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','20',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','17',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','4',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','9',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','13',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','14',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','22',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','23',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','22',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','20',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','19',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','25',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','8',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','3',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','27',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','21',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','18',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','23',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','28',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','20',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','15',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','23',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','4',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','30',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','16',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','30',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','13',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','14',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','13',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','10',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','23',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','8',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','18',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','27',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','9',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','3',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','24',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','13',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','19',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','4',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','22',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','5',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','3',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','21',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','19',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('66','15',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','29',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','17',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','12',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','5',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','22',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','19',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','1',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','13',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','19',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','19',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','18',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','29',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','29',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','23',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','23',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','3',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','8',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','23',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','28',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','16',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','11',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','4',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','5',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','18',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','6',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','14',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','29',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','14',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','3',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','17',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','13',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','10',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','4',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('15','1',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','17',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','16',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','18',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','26',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','25',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','22',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','20',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','25',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','7',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','1',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','14',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','4',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','8',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','22',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','23',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','28',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','14',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','24',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('66','1',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','22',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','20',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','16',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','22',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','4',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','18',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','2',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','4',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','11',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','27',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','10',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','21',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','5',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','17',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','1',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','10',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','22',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','16',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','18',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','2',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','24',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','18',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','25',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','27',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','4',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','4',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','18',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','21',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','6',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','20',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','14',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','24',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','30',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','9',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('66','22',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','10',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','21',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','5',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','13',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','22',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','27',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','5',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','7',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','19',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','3',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','3',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','1',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','25',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','8',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','1',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','8',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','21',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','17',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','2',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','29',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','21',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','23',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','29',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','23',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','30',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','13',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','4',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','8',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','8',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','30',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','24',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','26',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','7',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','9',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','26',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','7',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','25',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','19',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','7',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','9',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','25',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','1',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','2',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','9',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','10',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','10',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','20',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','5',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','11',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','6',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','9',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('70','16',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','21',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','19',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','19',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','25',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','29',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','10',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','7',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','15',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','17',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','30',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','19',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','3',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','26',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','15',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','17',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','15',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','25',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','22',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','6',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','20',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','8',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','20',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','16',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','17',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','6',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','30',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','6',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','18',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','21',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','7',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','24',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','14',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','18',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','22',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','4',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','16',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','7',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','22',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','13',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','12',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','22',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','1',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','12',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','19',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','24',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','5',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','8',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','26',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','10',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','23',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','1',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','27',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','14',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','5',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','25',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','29',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','26',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','19',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','1',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','16',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','16',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','20',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','30',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','1',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','25',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','5',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','5',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','7',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','27',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','15',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','1',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','22',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','8',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','19',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','18',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','2',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','7',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','26',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','9',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','10',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','27',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','21',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','8',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','7',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','11',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','25',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','26',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','16',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','12',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','21',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','8',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','22',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','11',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','22',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','13',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','27',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','13',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','24',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','30',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','3',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','21',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','17',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','12',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','3',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','7',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','28',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','13',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','13',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','23',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','1',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','20',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','27',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','12',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','6',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','11',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','2',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','25',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','12',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('66','14',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','15',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','10',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','4',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','3',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','20',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','4',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','12',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('1','5',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','28',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','7',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','9',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','30',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','21',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','6',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','3',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('32','23',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','18',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','30',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','9',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','29',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','6',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','6',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','1',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','2',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','11',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','8',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','11',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','23',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','28',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','3',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','8',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','9',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','27',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','8',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','1',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','10',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','15',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','29',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','15',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','17',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','23',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('39','6',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','15',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','6',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','29',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','7',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','14',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','28',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','14',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','16',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','17',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','4',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','3',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','16',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','18',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('73','9',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','30',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','16',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','27',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','6',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('50','25',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','28',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','22',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('33','5',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','10',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','21',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','30',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','19',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','7',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','18',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','28',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','9',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','15',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','6',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','26',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','21',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','26',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','26',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('3','8',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','19',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','27',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','27',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('86','4',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','11',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','16',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','29',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','14',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','1',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','30',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','4',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('23','11',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','29',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','7',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','25',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','14',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','7',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','12',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('30','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','22',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('83','2',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','11',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','8',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','2',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','5',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','8',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','24',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','17',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','23',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','20',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','8',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('6','29',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','29',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','27',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','5',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','20',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','1',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','30',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','24',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','24',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','18',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','21',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','12',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','6',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','16',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','2',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','3',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','15',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','15',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','28',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','8',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','28',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','17',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','13',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','17',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','15',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','10',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','21',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','1',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','17',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('99','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','30',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','2',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','24',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('89','9',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','13',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','23',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','24',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('62','14',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('14','7',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','22',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','23',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','25',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','13',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','2',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','21',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','27',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','29',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','14',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('74','8',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','18',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('8','9',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('16','21',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','23',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','4',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('63','22',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','25',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('69','28',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('57','15',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','19',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','24',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('25','10',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','6',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','10',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','23',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('85','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','16',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','23',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','3',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','4',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','14',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','4',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('4','3',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','9',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','29',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','15',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','13',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','7',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','11',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('61','24',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','9',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('28','18',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','16',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','8',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','2',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','29',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','9',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','4',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','1',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','10',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','3',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','30',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','2',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('19','6',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','29',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','16',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','20',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','5',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('31','13',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','30',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','27',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('78','13',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','24',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','7',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','21',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('26','23',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','24',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('46','20',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','14',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','13',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('93','2',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','5',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('9','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('49','15',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','26',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('75','23',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','1',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('22','30',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','8',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','15',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','1',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','8',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','12',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('11','17',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('100','30',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','29',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('18','20',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('29','30',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','12',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','22',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('17','21',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','18',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('15','13',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','7',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('60','4',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','19',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','3',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('55','9',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','2',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','20',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','21',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('36','23',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','12',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('71','7',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','23',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('38','14',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('2','6',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','28',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('20','1',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('82','26',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('94','22',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','11',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','10',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','6',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('53','28',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','11',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','4',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('58','25',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('51','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('43','7',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','15',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('67','7',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','21',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('48','22',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','5',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('41','4',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('88','5',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('95','12',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('47','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('52','15',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('59','12',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('12','12',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('35','17',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('24','25',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('34','28',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('13','11',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','26',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','28',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('65','16',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','20',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('15','2',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','19',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('77','7',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('64','2',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('10','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','21',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','14',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','10',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('68','10',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('84','8',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('42','3',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('91','19',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','14',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('76','12',3);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('81','18',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('90','3',10);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('5','5',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('72','24',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('40','25',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('7','30',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('98','11',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('79','4',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('27','3',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('80','30',9);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('96','9',7);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('54','24',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','24',2);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('92','22',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('37','26',8);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('97','12',5);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('21','6',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('56','22',6);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('44','12',1);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('45','3',4);
Insert into quantiteProduit (IDCOMMANDE,IDPRODUIT,NBPRODUIT) values('87','15',5);