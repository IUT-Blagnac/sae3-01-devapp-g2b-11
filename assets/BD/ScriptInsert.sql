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


-----------------------------
Insert into quantiteProduit values('37','32',5);
Insert into quantiteProduit values('5','34',2);
Insert into quantiteProduit values('65','8',2);
Insert into quantiteProduit values('81','48',8);
Insert into quantiteProduit values('60','42',1);
Insert into quantiteProduit values('49','47',9);
Insert into quantiteProduit values('44','9',7);
Insert into quantiteProduit values('4','41',9);
Insert into quantiteProduit values('26','48',3);
Insert into quantiteProduit values('67','32',7);
Insert into quantiteProduit values('92','24',1);
Insert into quantiteProduit values('52','2',5);
Insert into quantiteProduit values('38','49',8);
Insert into quantiteProduit values('17','45',2);
Insert into quantiteProduit values('5','24',6);
Insert into quantiteProduit values('84','26',10);
Insert into quantiteProduit values('15','39',2);
Insert into quantiteProduit values('56','17',9);
Insert into quantiteProduit values('72','42',5);
Insert into quantiteProduit values('10','21',4);
Insert into quantiteProduit values('13','45',4);
Insert into quantiteProduit values('1','21',6);
Insert into quantiteProduit values('27','34',9);
Insert into quantiteProduit values('64','40',9);
Insert into quantiteProduit values('75','50',2);
Insert into quantiteProduit values('18','9',10);
Insert into quantiteProduit values('53','10',6);
Insert into quantiteProduit values('14','3',2);
Insert into quantiteProduit values('55','17',1);
Insert into quantiteProduit values('86','9',8);
Insert into quantiteProduit values('36','11',4);
Insert into quantiteProduit values('90','43',1);
Insert into quantiteProduit values('12','47',6);
Insert into quantiteProduit values('34','3',5);
Insert into quantiteProduit values('65','10',2);
Insert into quantiteProduit values('36','34',1);
Insert into quantiteProduit values('98','13',1);
Insert into quantiteProduit values('35','8',8);
Insert into quantiteProduit values('16','32',4);
Insert into quantiteProduit values('6','25',3);
Insert into quantiteProduit values('61','31',6);
Insert into quantiteProduit values('36','49',4);
Insert into quantiteProduit values('38','46',3);
Insert into quantiteProduit values('15','1',1);
Insert into quantiteProduit values('79','7',1);
Insert into quantiteProduit values('41','5',8);
Insert into quantiteProduit values('40','11',9);
Insert into quantiteProduit values('38','22',7);
Insert into quantiteProduit values('23','42',7);
Insert into quantiteProduit values('50','21',5);
Insert into quantiteProduit values('14','49',8);
Insert into quantiteProduit values('21','9',8);
Insert into quantiteProduit values('28','16',5);
Insert into quantiteProduit values('57','1',2);
Insert into quantiteProduit values('50','12',3);
Insert into quantiteProduit values('21','27',3);
Insert into quantiteProduit values('94','21',7);
Insert into quantiteProduit values('21','45',4);
Insert into quantiteProduit values('14','37',4);
Insert into quantiteProduit values('48','27',7);
Insert into quantiteProduit values('40','25',10);
Insert into quantiteProduit values('1','14',6);
Insert into quantiteProduit values('44','40',1);
Insert into quantiteProduit values('60','43',10);
Insert into quantiteProduit values('24','10',8);
Insert into quantiteProduit values('62','44',2);
Insert into quantiteProduit values('41','1',3);
Insert into quantiteProduit values('25','24',7);
Insert into quantiteProduit values('50','19',1);
Insert into quantiteProduit values('90','16',1);
Insert into quantiteProduit values('57','27',4);
Insert into quantiteProduit values('67','48',2);
Insert into quantiteProduit values('17','19',10);
Insert into quantiteProduit values('49','34',3);
Insert into quantiteProduit values('77','4',1);
Insert into quantiteProduit values('14','2',10);
Insert into quantiteProduit values('11','48',10);
Insert into quantiteProduit values('4','49',6);
Insert into quantiteProduit values('81','26',6);
Insert into quantiteProduit values('30','22',10);
Insert into quantiteProduit values('83','22',4);
Insert into quantiteProduit values('56','19',2);
Insert into quantiteProduit values('77','7',5);
Insert into quantiteProduit values('83','2',3);
Insert into quantiteProduit values('26','27',4);
Insert into quantiteProduit values('88','7',4);
Insert into quantiteProduit values('99','11',4);
Insert into quantiteProduit values('80','6',8);
Insert into quantiteProduit values('73','12',7);
Insert into quantiteProduit values('65','18',4);
Insert into quantiteProduit values('64','35',5);
Insert into quantiteProduit values('82','20',10);
Insert into quantiteProduit values('77','40',8);
Insert into quantiteProduit values('75','29',2);
Insert into quantiteProduit values('87','39',6);
Insert into quantiteProduit values('76','45',1);
Insert into quantiteProduit values('56','44',7);
Insert into quantiteProduit values('85','8',5);
Insert into quantiteProduit values('33','50',1);
Insert into quantiteProduit values('90','1',4);
Insert into quantiteProduit values('50','27',6);
Insert into quantiteProduit values('67','33',10);
Insert into quantiteProduit values('95','3',3);
Insert into quantiteProduit values('63','35',9);
Insert into quantiteProduit values('9','16',1);
Insert into quantiteProduit values('73','2',8);
Insert into quantiteProduit values('59','38',6);
Insert into quantiteProduit values('30','44',9);
Insert into quantiteProduit values('11','31',5);
Insert into quantiteProduit values('17','38',5);
Insert into quantiteProduit values('51','47',3);
Insert into quantiteProduit values('85','5',8);
Insert into quantiteProduit values('11','13',2);
Insert into quantiteProduit values('100','14',2);
Insert into quantiteProduit values('87','32',9);
Insert into quantiteProduit values('34','14',3);
Insert into quantiteProduit values('58','23',10);
Insert into quantiteProduit values('30','49',1);
Insert into quantiteProduit values('92','50',9);
Insert into quantiteProduit values('84','39',9);
Insert into quantiteProduit values('44','17',9);
Insert into quantiteProduit values('83','33',1);
Insert into quantiteProduit values('44','19',1);
Insert into quantiteProduit values('75','34',3);
Insert into quantiteProduit values('63','48',1);
Insert into quantiteProduit values('26','40',7);
Insert into quantiteProduit values('30','6',5);
Insert into quantiteProduit values('82','5',8);
Insert into quantiteProduit values('5','27',10);
Insert into quantiteProduit values('7','42',10);
Insert into quantiteProduit values('51','45',5);
Insert into quantiteProduit values('44','39',3);
Insert into quantiteProduit values('74','5',10);
Insert into quantiteProduit values('43','32',8);
Insert into quantiteProduit values('81','10',8);
Insert into quantiteProduit values('66','37',10);
Insert into quantiteProduit values('45','24',6);
Insert into quantiteProduit values('81','26',4);
Insert into quantiteProduit values('21','28',9);
Insert into quantiteProduit values('56','38',3);
Insert into quantiteProduit values('80','4',5);
Insert into quantiteProduit values('33','48',6);
Insert into quantiteProduit values('82','18',8);
Insert into quantiteProduit values('17','6',5);
Insert into quantiteProduit values('87','10',8);
Insert into quantiteProduit values('78','48',5);
Insert into quantiteProduit values('64','14',10);
Insert into quantiteProduit values('83','49',5);
Insert into quantiteProduit values('79','46',2);
Insert into quantiteProduit values('39','26',9);
Insert into quantiteProduit values('9','41',10);
Insert into quantiteProduit values('84','11',9);
Insert into quantiteProduit values('2','38',5);
Insert into quantiteProduit values('91','31',2);
Insert into quantiteProduit values('83','47',3);
Insert into quantiteProduit values('19','30',2);
Insert into quantiteProduit values('81','23',1);
Insert into quantiteProduit values('70','32',7);
Insert into quantiteProduit values('61','29',4);
Insert into quantiteProduit values('11','47',5);
Insert into quantiteProduit values('25','1',4);
Insert into quantiteProduit values('2','32',8);
Insert into quantiteProduit values('76','3',9);
Insert into quantiteProduit values('20','25',8);
Insert into quantiteProduit values('67','30',2);
Insert into quantiteProduit values('50','11',7);
Insert into quantiteProduit values('52','31',9);
Insert into quantiteProduit values('76','27',2);
Insert into quantiteProduit values('91','48',7);
Insert into quantiteProduit values('38','7',7);
Insert into quantiteProduit values('59','10',7);
Insert into quantiteProduit values('82','27',2);
Insert into quantiteProduit values('97','3',3);
Insert into quantiteProduit values('18','46',3);
Insert into quantiteProduit values('37','2',7);
Insert into quantiteProduit values('30','25',9);
Insert into quantiteProduit values('35','6',9);
Insert into quantiteProduit values('44','23',7);
Insert into quantiteProduit values('98','48',8);
Insert into quantiteProduit values('63','13',2);
Insert into quantiteProduit values('89','30',9);
Insert into quantiteProduit values('6','21',9);
Insert into quantiteProduit values('43','48',2);
Insert into quantiteProduit values('41','23',3);
Insert into quantiteProduit values('41','28',10);
Insert into quantiteProduit values('76','45',9);
Insert into quantiteProduit values('83','36',2);
Insert into quantiteProduit values('33','34',7);
Insert into quantiteProduit values('83','32',5);
Insert into quantiteProduit values('8','41',5);
Insert into quantiteProduit values('85','28',6);
Insert into quantiteProduit values('10','49',2);
Insert into quantiteProduit values('6','10',9);
Insert into quantiteProduit values('80','31',3);
Insert into quantiteProduit values('51','42',6);
Insert into quantiteProduit values('70','6',7);
Insert into quantiteProduit values('24','50',2);
Insert into quantiteProduit values('30','19',3);
Insert into quantiteProduit values('29','43',5);
Insert into quantiteProduit values('62','23',6);
Insert into quantiteProduit values('59','25',8);
Insert into quantiteProduit values('16','49',6);
Insert into quantiteProduit values('52','42',7);
Insert into quantiteProduit values('62','47',3);
Insert into quantiteProduit values('3','18',7);
Insert into quantiteProduit values('64','38',7);
Insert into quantiteProduit values('81','27',7);
Insert into quantiteProduit values('37','15',10);
Insert into quantiteProduit values('73','9',3);
Insert into quantiteProduit values('79','22',10);
Insert into quantiteProduit values('41','35',6);
Insert into quantiteProduit values('49','20',9);
Insert into quantiteProduit values('52','7',8);
Insert into quantiteProduit values('8','16',6);
Insert into quantiteProduit values('67','30',2);
Insert into quantiteProduit values('25','35',8);
Insert into quantiteProduit values('29','42',3);
Insert into quantiteProduit values('4','15',7);
Insert into quantiteProduit values('87','35',4);
Insert into quantiteProduit values('30','5',6);
Insert into quantiteProduit values('70','40',10);
Insert into quantiteProduit values('71','16',5);
Insert into quantiteProduit values('65','18',10);
Insert into quantiteProduit values('17','19',6);
Insert into quantiteProduit values('9','20',1);
Insert into quantiteProduit values('17','35',2);
Insert into quantiteProduit values('9','14',1);
Insert into quantiteProduit values('90','48',2);
Insert into quantiteProduit values('5','50',1);
Insert into quantiteProduit values('98','49',8);
Insert into quantiteProduit values('3','4',1);
Insert into quantiteProduit values('26','40',10);
Insert into quantiteProduit values('49','5',3);
Insert into quantiteProduit values('48','23',4);
Insert into quantiteProduit values('25','10',7);
Insert into quantiteProduit values('46','36',3);
Insert into quantiteProduit values('29','48',3);
Insert into quantiteProduit values('19','16',2);
Insert into quantiteProduit values('3','34',2);
Insert into quantiteProduit values('32','28',4);
Insert into quantiteProduit values('95','1',3);
Insert into quantiteProduit values('29','1',8);
Insert into quantiteProduit values('71','8',8);
Insert into quantiteProduit values('12','40',8);
Insert into quantiteProduit values('2','20',1);
Insert into quantiteProduit values('27','31',3);
Insert into quantiteProduit values('27','20',3);
Insert into quantiteProduit values('11','1',5);
Insert into quantiteProduit values('71','3',10);
Insert into quantiteProduit values('83','22',8);
Insert into quantiteProduit values('20','50',3);
Insert into quantiteProduit values('36','31',2);
Insert into quantiteProduit values('83','44',7);
Insert into quantiteProduit values('57','11',7);
Insert into quantiteProduit values('40','28',3);
Insert into quantiteProduit values('33','47',2);
Insert into quantiteProduit values('70','40',2);
Insert into quantiteProduit values('24','3',7);
Insert into quantiteProduit values('23','8',7);
Insert into quantiteProduit values('24','24',3);
Insert into quantiteProduit values('89','1',1);
Insert into quantiteProduit values('35','43',6);
Insert into quantiteProduit values('86','13',5);
Insert into quantiteProduit values('93','16',1);
Insert into quantiteProduit values('12','9',1);
Insert into quantiteProduit values('20','29',1);
Insert into quantiteProduit values('48','33',8);
Insert into quantiteProduit values('82','15',2);
Insert into quantiteProduit values('95','3',2);
Insert into quantiteProduit values('88','43',9);
Insert into quantiteProduit values('27','37',1);
Insert into quantiteProduit values('56','44',1);
Insert into quantiteProduit values('73','30',2);
Insert into quantiteProduit values('7','30',8);
Insert into quantiteProduit values('20','44',6);
Insert into quantiteProduit values('26','2',10);
Insert into quantiteProduit values('15','45',7);
Insert into quantiteProduit values('85','3',6);
Insert into quantiteProduit values('92','44',6);
Insert into quantiteProduit values('32','2',5);
Insert into quantiteProduit values('74','17',7);
Insert into quantiteProduit values('26','14',5);
Insert into quantiteProduit values('88','48',1);
Insert into quantiteProduit values('62','29',10);
Insert into quantiteProduit values('97','1',2);
Insert into quantiteProduit values('58','38',9);
Insert into quantiteProduit values('49','20',9);
Insert into quantiteProduit values('19','25',3);
Insert into quantiteProduit values('30','26',10);
Insert into quantiteProduit values('34','37',8);
Insert into quantiteProduit values('10','33',1);
Insert into quantiteProduit values('92','1',3);
Insert into quantiteProduit values('26','12',1);
Insert into quantiteProduit values('48','11',2);
Insert into quantiteProduit values('93','24',6);
Insert into quantiteProduit values('47','44',4);
Insert into quantiteProduit values('84','37',8);
Insert into quantiteProduit values('76','10',7);
Insert into quantiteProduit values('74','40',1);
Insert into quantiteProduit values('11','14',2);
Insert into quantiteProduit values('19','33',3);
Insert into quantiteProduit values('81','8',10);
Insert into quantiteProduit values('73','9',3);
Insert into quantiteProduit values('24','8',9);
Insert into quantiteProduit values('23','9',5);
Insert into quantiteProduit values('75','1',9);
Insert into quantiteProduit values('90','1',2);
Insert into quantiteProduit values('50','29',4);
Insert into quantiteProduit values('67','17',2);
Insert into quantiteProduit values('59','35',1);
Insert into quantiteProduit values('82','23',10);
Insert into quantiteProduit values('18','13',2);
Insert into quantiteProduit values('62','34',4);
Insert into quantiteProduit values('17','5',10);
Insert into quantiteProduit values('71','15',2);
Insert into quantiteProduit values('37','6',8);
Insert into quantiteProduit values('64','33',10);
Insert into quantiteProduit values('29','4',10);
Insert into quantiteProduit values('79','26',10);
Insert into quantiteProduit values('96','27',6);
Insert into quantiteProduit values('9','16',5);
Insert into quantiteProduit values('88','42',1);
Insert into quantiteProduit values('42','33',8);
Insert into quantiteProduit values('96','11',7);
Insert into quantiteProduit values('97','38',2);
Insert into quantiteProduit values('88','30',2);
Insert into quantiteProduit values('17','43',5);
Insert into quantiteProduit values('22','9',6);
Insert into quantiteProduit values('36','19',1);
Insert into quantiteProduit values('98','23',8);
Insert into quantiteProduit values('49','41',2);
Insert into quantiteProduit values('54','10',7);
Insert into quantiteProduit values('13','21',8);
Insert into quantiteProduit values('47','11',8);
Insert into quantiteProduit values('19','44',2);
Insert into quantiteProduit values('74','49',6);
Insert into quantiteProduit values('32','34',9);
Insert into quantiteProduit values('92','12',1);
Insert into quantiteProduit values('17','49',2);
Insert into quantiteProduit values('76','35',2);
Insert into quantiteProduit values('41','46',4);
Insert into quantiteProduit values('21','6',5);
Insert into quantiteProduit values('58','21',2);
Insert into quantiteProduit values('17','10',3);
Insert into quantiteProduit values('93','41',4);
Insert into quantiteProduit values('73','38',7);
Insert into quantiteProduit values('40','21',2);
Insert into quantiteProduit values('74','44',3);
Insert into quantiteProduit values('93','8',1);
Insert into quantiteProduit values('38','36',6);
Insert into quantiteProduit values('52','14',8);
Insert into quantiteProduit values('52','7',8);
Insert into quantiteProduit values('90','37',8);
Insert into quantiteProduit values('86','17',7);
Insert into quantiteProduit values('50','45',4);
Insert into quantiteProduit values('8','43',7);
Insert into quantiteProduit values('20','22',4);
Insert into quantiteProduit values('18','1',2);
Insert into quantiteProduit values('21','2',10);
Insert into quantiteProduit values('81','45',8);
Insert into quantiteProduit values('20','5',10);
Insert into quantiteProduit values('53','3',9);
Insert into quantiteProduit values('81','48',3);
Insert into quantiteProduit values('75','23',6);
Insert into quantiteProduit values('15','41',4);
Insert into quantiteProduit values('6','31',5);
Insert into quantiteProduit values('32','39',8);
Insert into quantiteProduit values('67','26',4);
Insert into quantiteProduit values('45','9',5);
Insert into quantiteProduit values('16','17',4);
Insert into quantiteProduit values('21','20',3);
Insert into quantiteProduit values('96','14',8);
Insert into quantiteProduit values('47','40',6);
Insert into quantiteProduit values('1','13',9);
Insert into quantiteProduit values('98','43',2);
Insert into quantiteProduit values('58','20',7);
Insert into quantiteProduit values('55','23',8);
Insert into quantiteProduit values('17','15',7);
Insert into quantiteProduit values('75','34',6);
Insert into quantiteProduit values('14','41',2);
Insert into quantiteProduit values('44','45',8);
Insert into quantiteProduit values('10','5',8);
Insert into quantiteProduit values('4','7',6);
Insert into quantiteProduit values('19','31',5);
Insert into quantiteProduit values('85','14',8);
Insert into quantiteProduit values('67','4',6);
Insert into quantiteProduit values('16','20',7);
Insert into quantiteProduit values('6','19',10);
Insert into quantiteProduit values('91','37',5);
Insert into quantiteProduit values('2','2',6);
Insert into quantiteProduit values('15','4',9);
Insert into quantiteProduit values('4','2',9);
Insert into quantiteProduit values('71','15',7);
Insert into quantiteProduit values('81','1',7);
Insert into quantiteProduit values('1','43',4);
Insert into quantiteProduit values('18','32',3);
Insert into quantiteProduit values('61','50',3);
Insert into quantiteProduit values('90','10',1);
Insert into quantiteProduit values('50','13',1);
Insert into quantiteProduit values('50','36',7);
Insert into quantiteProduit values('69','1',7);
Insert into quantiteProduit values('33','12',10);
Insert into quantiteProduit values('95','18',2);
Insert into quantiteProduit values('71','25',10);
Insert into quantiteProduit values('100','17',4);
Insert into quantiteProduit values('31','40',10);
Insert into quantiteProduit values('69','18',6);
Insert into quantiteProduit values('86','14',3);
Insert into quantiteProduit values('77','29',4);
Insert into quantiteProduit values('26','28',10);
Insert into quantiteProduit values('32','39',6);
Insert into quantiteProduit values('68','2',9);
Insert into quantiteProduit values('97','45',5);
Insert into quantiteProduit values('22','47',1);
Insert into quantiteProduit values('46','3',8);
Insert into quantiteProduit values('15','32',9);
Insert into quantiteProduit values('19','20',3);
Insert into quantiteProduit values('5','45',8);
Insert into quantiteProduit values('86','50',8);
Insert into quantiteProduit values('74','26',3);
Insert into quantiteProduit values('33','36',9);
Insert into quantiteProduit values('36','32',6);
Insert into quantiteProduit values('59','18',10);
Insert into quantiteProduit values('51','10',2);
Insert into quantiteProduit values('72','9',9);
Insert into quantiteProduit values('80','24',5);
Insert into quantiteProduit values('90','25',1);
Insert into quantiteProduit values('98','48',3);
Insert into quantiteProduit values('48','14',6);
Insert into quantiteProduit values('45','3',8);
Insert into quantiteProduit values('57','46',7);
Insert into quantiteProduit values('54','36',10);
Insert into quantiteProduit values('37','6',9);
Insert into quantiteProduit values('33','37',3);
Insert into quantiteProduit values('3','49',6);
Insert into quantiteProduit values('83','47',4);
Insert into quantiteProduit values('96','17',2);
Insert into quantiteProduit values('4','44',10);
Insert into quantiteProduit values('11','1',2);
Insert into quantiteProduit values('100','16',8);
Insert into quantiteProduit values('98','28',5);
Insert into quantiteProduit values('5','22',4);
Insert into quantiteProduit values('68','29',4);
Insert into quantiteProduit values('21','15',3);
Insert into quantiteProduit values('15','43',2);
Insert into quantiteProduit values('25','26',5);
Insert into quantiteProduit values('24','50',4);
Insert into quantiteProduit values('80','9',10);
Insert into quantiteProduit values('90','48',1);
Insert into quantiteProduit values('62','36',2);
Insert into quantiteProduit values('95','21',5);
Insert into quantiteProduit values('81','44',8);
Insert into quantiteProduit values('43','39',4);
Insert into quantiteProduit values('87','18',6);
Insert into quantiteProduit values('87','8',1);
Insert into quantiteProduit values('41','1',5);
Insert into quantiteProduit values('40','30',1);
Insert into quantiteProduit values('72','37',3);
Insert into quantiteProduit values('31','21',9);
Insert into quantiteProduit values('67','25',9);
Insert into quantiteProduit values('88','28',8);
Insert into quantiteProduit values('75','2',2);
Insert into quantiteProduit values('71','9',8);
Insert into quantiteProduit values('35','29',6);
Insert into quantiteProduit values('69','23',8);
Insert into quantiteProduit values('59','21',7);
Insert into quantiteProduit values('77','47',7);
Insert into quantiteProduit values('23','43',1);
Insert into quantiteProduit values('93','29',2);
Insert into quantiteProduit values('3','37',7);
Insert into quantiteProduit values('56','15',3);
Insert into quantiteProduit values('18','13',4);
Insert into quantiteProduit values('42','27',4);
Insert into quantiteProduit values('94','31',1);
Insert into quantiteProduit values('63','36',5);
Insert into quantiteProduit values('55','12',9);
Insert into quantiteProduit values('30','21',10);
Insert into quantiteProduit values('30','37',4);
Insert into quantiteProduit values('93','47',8);
Insert into quantiteProduit values('9','20',6);
Insert into quantiteProduit values('9','10',2);
Insert into quantiteProduit values('92','9',2);
Insert into quantiteProduit values('95','40',1);
Insert into quantiteProduit values('90','9',9);
Insert into quantiteProduit values('37','14',7);
Insert into quantiteProduit values('92','32',9);
Insert into quantiteProduit values('28','3',2);
Insert into quantiteProduit values('24','21',9);
Insert into quantiteProduit values('3','37',8);
Insert into quantiteProduit values('21','28',3);
Insert into quantiteProduit values('82','48',8);
Insert into quantiteProduit values('6','7',3);
Insert into quantiteProduit values('38','18',3);
Insert into quantiteProduit values('33','50',5);
Insert into quantiteProduit values('77','6',8);
Insert into quantiteProduit values('57','2',9);
Insert into quantiteProduit values('56','19',1);
Insert into quantiteProduit values('38','7',5);
Insert into quantiteProduit values('26','13',9);
Insert into quantiteProduit values('39','13',2);
Insert into quantiteProduit values('49','44',1);
Insert into quantiteProduit values('99','36',7);
Insert into quantiteProduit values('63','45',8);
Insert into quantiteProduit values('97','39',3);
Insert into quantiteProduit values('40','1',9);
Insert into quantiteProduit values('87','13',5);
Insert into quantiteProduit values('13','49',2);
Insert into quantiteProduit values('26','9',5);
Insert into quantiteProduit values('52','18',4);
Insert into quantiteProduit values('55','12',5);
Insert into quantiteProduit values('75','22',8);
Insert into quantiteProduit values('83','41',9);
Insert into quantiteProduit values('69','32',1);
Insert into quantiteProduit values('17','34',9);
Insert into quantiteProduit values('19','16',5);
Insert into quantiteProduit values('49','6',1);
Insert into quantiteProduit values('74','47',7);
Insert into quantiteProduit values('45','42',8);
Insert into quantiteProduit values('83','2',9);
Insert into quantiteProduit values('35','21',1);
Insert into quantiteProduit values('82','26',7);
Insert into quantiteProduit values('78','32',7);
Insert into quantiteProduit values('18','24',9);
Insert into quantiteProduit values('94','50',9);
Insert into quantiteProduit values('94','50',9);
Insert into quantiteProduit values('88','24',10);
Insert into quantiteProduit values('96','25',3);
Insert into quantiteProduit values('56','8',1);
Insert into quantiteProduit values('93','50',1);
Insert into quantiteProduit values('51','18',6);
Insert into quantiteProduit values('15','29',2);
Insert into quantiteProduit values('81','10',1);
Insert into quantiteProduit values('2','21',8);
Insert into quantiteProduit values('81','30',4);
Insert into quantiteProduit values('37','50',9);
Insert into quantiteProduit values('6','24',2);
Insert into quantiteProduit values('35','19',7);
Insert into quantiteProduit values('97','49',6);
Insert into quantiteProduit values('20','21',2);
Insert into quantiteProduit values('11','3',3);
Insert into quantiteProduit values('73','18',4);
Insert into quantiteProduit values('37','49',1);
Insert into quantiteProduit values('89','14',8);
Insert into quantiteProduit values('57','19',10);
Insert into quantiteProduit values('88','38',8);
Insert into quantiteProduit values('68','37',1);
Insert into quantiteProduit values('55','4',3);
Insert into quantiteProduit values('20','19',8);
Insert into quantiteProduit values('46','14',2);
Insert into quantiteProduit values('69','26',2);
Insert into quantiteProduit values('85','33',5);
Insert into quantiteProduit values('54','26',8);
Insert into quantiteProduit values('83','44',8);
Insert into quantiteProduit values('46','28',4);
Insert into quantiteProduit values('56','25',10);
Insert into quantiteProduit values('4','43',9);
Insert into quantiteProduit values('18','32',3);
Insert into quantiteProduit values('49','2',1);
Insert into quantiteProduit values('80','42',8);
Insert into quantiteProduit values('39','12',8);
Insert into quantiteProduit values('2','48',5);
Insert into quantiteProduit values('48','21',10);
Insert into quantiteProduit values('31','17',6);
Insert into quantiteProduit values('22','23',9);
Insert into quantiteProduit values('17','50',6);
Insert into quantiteProduit values('43','3',7);
Insert into quantiteProduit values('56','39',9);
Insert into quantiteProduit values('17','46',9);
Insert into quantiteProduit values('31','19',2);
Insert into quantiteProduit values('77','30',1);
Insert into quantiteProduit values('20','32',2);
Insert into quantiteProduit values('73','24',9);
Insert into quantiteProduit values('72','26',6);
Insert into quantiteProduit values('36','45',8);
Insert into quantiteProduit values('15','36',9);
Insert into quantiteProduit values('68','7',4);
Insert into quantiteProduit values('37','40',2);
Insert into quantiteProduit values('24','10',9);
Insert into quantiteProduit values('78','39',6);
Insert into quantiteProduit values('3','34',10);
Insert into quantiteProduit values('72','36',3);
Insert into quantiteProduit values('82','30',9);
Insert into quantiteProduit values('81','5',10);
Insert into quantiteProduit values('69','15',3);
Insert into quantiteProduit values('71','43',1);
Insert into quantiteProduit values('53','15',2);
Insert into quantiteProduit values('22','4',4);
Insert into quantiteProduit values('45','35',10);
Insert into quantiteProduit values('15','30',6);
Insert into quantiteProduit values('69','42',1);
Insert into quantiteProduit values('22','33',9);
Insert into quantiteProduit values('46','39',8);
Insert into quantiteProduit values('62','5',10);
Insert into quantiteProduit values('42','6',4);
Insert into quantiteProduit values('20','24',4);
Insert into quantiteProduit values('85','13',8);
Insert into quantiteProduit values('42','25',10);
Insert into quantiteProduit values('72','41',4);
Insert into quantiteProduit values('29','50',4);
Insert into quantiteProduit values('55','37',5);
Insert into quantiteProduit values('3','48',7);
Insert into quantiteProduit values('91','42',10);
Insert into quantiteProduit values('95','26',9);
Insert into quantiteProduit values('9','20',6);
Insert into quantiteProduit values('12','40',5);
Insert into quantiteProduit values('37','6',2);
Insert into quantiteProduit values('50','8',5);
Insert into quantiteProduit values('8','11',4);
Insert into quantiteProduit values('93','41',3);
Insert into quantiteProduit values('48','42',6);
Insert into quantiteProduit values('11','9',9);
Insert into quantiteProduit values('1','4',7);
Insert into quantiteProduit values('63','20',1);
Insert into quantiteProduit values('16','27',4);
Insert into quantiteProduit values('5','17',8);
Insert into quantiteProduit values('28','41',6);
Insert into quantiteProduit values('69','21',8);
Insert into quantiteProduit values('2','32',2);
Insert into quantiteProduit values('31','43',9);
Insert into quantiteProduit values('28','27',2);
Insert into quantiteProduit values('53','39',9);
Insert into quantiteProduit values('94','7',6);
Insert into quantiteProduit values('23','47',9);
Insert into quantiteProduit values('49','19',1);
Insert into quantiteProduit values('96','10',1);
Insert into quantiteProduit values('38','43',6);
Insert into quantiteProduit values('42','38',10);
Insert into quantiteProduit values('12','3',7);
Insert into quantiteProduit values('54','46',9);
Insert into quantiteProduit values('37','22',5);
Insert into quantiteProduit values('92','40',10);
Insert into quantiteProduit values('1','47',8);
Insert into quantiteProduit values('77','5',10);
Insert into quantiteProduit values('87','11',8);
Insert into quantiteProduit values('35','30',8);
Insert into quantiteProduit values('89','39',10);
Insert into quantiteProduit values('47','14',2);
Insert into quantiteProduit values('94','18',3);
Insert into quantiteProduit values('86','21',5);
Insert into quantiteProduit values('25','7',8);
Insert into quantiteProduit values('72','32',2);
Insert into quantiteProduit values('19','1',4);
Insert into quantiteProduit values('82','27',7);
Insert into quantiteProduit values('88','44',1);
Insert into quantiteProduit values('30','7',2);
Insert into quantiteProduit values('24','37',5);
Insert into quantiteProduit values('51','4',7);
Insert into quantiteProduit values('66','40',6);
Insert into quantiteProduit values('24','31',1);
Insert into quantiteProduit values('34','29',1);
Insert into quantiteProduit values('52','24',10);
Insert into quantiteProduit values('88','44',7);
Insert into quantiteProduit values('29','15',6);
Insert into quantiteProduit values('27','39',10);
Insert into quantiteProduit values('76','22',2);
Insert into quantiteProduit values('80','24',9);
Insert into quantiteProduit values('24','10',6);
Insert into quantiteProduit values('16','19',3);
Insert into quantiteProduit values('78','43',7);
Insert into quantiteProduit values('25','31',2);
Insert into quantiteProduit values('49','41',3);
Insert into quantiteProduit values('36','2',4);
Insert into quantiteProduit values('75','37',5);
Insert into quantiteProduit values('76','42',7);
Insert into quantiteProduit values('17','34',3);
Insert into quantiteProduit values('49','14',10);
Insert into quantiteProduit values('54','42',9);
Insert into quantiteProduit values('32','17',7);
Insert into quantiteProduit values('60','38',8);
Insert into quantiteProduit values('27','28',8);
Insert into quantiteProduit values('49','32',2);
Insert into quantiteProduit values('26','17',3);
Insert into quantiteProduit values('10','39',1);
Insert into quantiteProduit values('25','31',1);
Insert into quantiteProduit values('96','37',7);
Insert into quantiteProduit values('38','46',7);
Insert into quantiteProduit values('51','42',6);
Insert into quantiteProduit values('67','30',1);
Insert into quantiteProduit values('54','49',6);
Insert into quantiteProduit values('96','45',3);
Insert into quantiteProduit values('63','40',3);
Insert into quantiteProduit values('33','46',4);
Insert into quantiteProduit values('90','25',6);
Insert into quantiteProduit values('24','24',7);
Insert into quantiteProduit values('37','2',7);
Insert into quantiteProduit values('90','46',2);
Insert into quantiteProduit values('88','7',8);
Insert into quantiteProduit values('62','20',7);
Insert into quantiteProduit values('7','34',10);
Insert into quantiteProduit values('74','9',4);
Insert into quantiteProduit values('41','41',4);
Insert into quantiteProduit values('1','25',7);
Insert into quantiteProduit values('85','3',7);
Insert into quantiteProduit values('32','23',9);
Insert into quantiteProduit values('89','50',8);
Insert into quantiteProduit values('63','37',5);
Insert into quantiteProduit values('53','14',7);
Insert into quantiteProduit values('86','36',1);
Insert into quantiteProduit values('20','28',1);
Insert into quantiteProduit values('73','9',8);
Insert into quantiteProduit values('51','10',3);
Insert into quantiteProduit values('63','45',1);
Insert into quantiteProduit values('2','7',1);
Insert into quantiteProduit values('80','17',5);
Insert into quantiteProduit values('55','11',6);
Insert into quantiteProduit values('38','15',6);
Insert into quantiteProduit values('41','3',7);
Insert into quantiteProduit values('34','2',6);
Insert into quantiteProduit values('4','25',5);
Insert into quantiteProduit values('58','21',4);
Insert into quantiteProduit values('28','39',1);
Insert into quantiteProduit values('6','39',6);
Insert into quantiteProduit values('66','48',2);
Insert into quantiteProduit values('48','48',9);
Insert into quantiteProduit values('34','12',2);
Insert into quantiteProduit values('22','43',7);
Insert into quantiteProduit values('77','39',5);
Insert into quantiteProduit values('72','3',4);
Insert into quantiteProduit values('10','47',3);
Insert into quantiteProduit values('57','27',9);
Insert into quantiteProduit values('14','25',4);
Insert into quantiteProduit values('95','20',2);
Insert into quantiteProduit values('47','24',2);
Insert into quantiteProduit values('32','49',2);
Insert into quantiteProduit values('45','43',5);
Insert into quantiteProduit values('38','6',3);
Insert into quantiteProduit values('51','11',8);
Insert into quantiteProduit values('99','14',4);
Insert into quantiteProduit values('75','42',3);
Insert into quantiteProduit values('55','50',9);
Insert into quantiteProduit values('78','11',9);
Insert into quantiteProduit values('5','1',7);
Insert into quantiteProduit values('2','2',1);
Insert into quantiteProduit values('42','23',2);
Insert into quantiteProduit values('34','43',2);
Insert into quantiteProduit values('85','37',2);
Insert into quantiteProduit values('25','19',3);
Insert into quantiteProduit values('87','7',4);
Insert into quantiteProduit values('8','48',6);
Insert into quantiteProduit values('87','26',5);
Insert into quantiteProduit values('44','42',7);
Insert into quantiteProduit values('43','29',2);
Insert into quantiteProduit values('3','49',7);
Insert into quantiteProduit values('36','36',1);
Insert into quantiteProduit values('28','5',8);
Insert into quantiteProduit values('56','24',7);
Insert into quantiteProduit values('68','39',3);
Insert into quantiteProduit values('65','21',6);
Insert into quantiteProduit values('18','27',10);
Insert into quantiteProduit values('89','1',4);
Insert into quantiteProduit values('77','16',5);
Insert into quantiteProduit values('47','28',2);
Insert into quantiteProduit values('36','20',1);
Insert into quantiteProduit values('23','1',2);
Insert into quantiteProduit values('69','34',1);
Insert into quantiteProduit values('81','35',2);
Insert into quantiteProduit values('57','49',2);
Insert into quantiteProduit values('98','9',3);
Insert into quantiteProduit values('53','23',8);
Insert into quantiteProduit values('58','3',9);
Insert into quantiteProduit values('19','46',5);
Insert into quantiteProduit values('85','29',2);
Insert into quantiteProduit values('28','22',3);
Insert into quantiteProduit values('59','26',5);
Insert into quantiteProduit values('14','45',4);
Insert into quantiteProduit values('22','48',1);
Insert into quantiteProduit values('11','8',7);
Insert into quantiteProduit values('14','10',9);
Insert into quantiteProduit values('38','45',4);
Insert into quantiteProduit values('95','47',5);
Insert into quantiteProduit values('63','38',3);
Insert into quantiteProduit values('41','43',5);
Insert into quantiteProduit values('16','36',7);
Insert into quantiteProduit values('39','30',9);
Insert into quantiteProduit values('69','8',7);
Insert into quantiteProduit values('46','17',6);
Insert into quantiteProduit values('95','6',9);
Insert into quantiteProduit values('13','6',10);
Insert into quantiteProduit values('52','31',3);
Insert into quantiteProduit values('3','50',9);
Insert into quantiteProduit values('90','5',2);
Insert into quantiteProduit values('11','41',7);
Insert into quantiteProduit values('37','31',1);
Insert into quantiteProduit values('67','44',7);
Insert into quantiteProduit values('19','17',3);
Insert into quantiteProduit values('86','39',8);
Insert into quantiteProduit values('43','6',5);
Insert into quantiteProduit values('67','30',7);
Insert into quantiteProduit values('2','11',6);
Insert into quantiteProduit values('2','26',7);
Insert into quantiteProduit values('5','1',4);
Insert into quantiteProduit values('89','34',2);
Insert into quantiteProduit values('42','50',7);
Insert into quantiteProduit values('63','6',9);
Insert into quantiteProduit values('39','24',2);
Insert into quantiteProduit values('21','47',10);
Insert into quantiteProduit values('36','7',7);
Insert into quantiteProduit values('70','40',4);
Insert into quantiteProduit values('15','5',2);
Insert into quantiteProduit values('97','29',7);
Insert into quantiteProduit values('22','27',6);
Insert into quantiteProduit values('24','23',6);
Insert into quantiteProduit values('3','31',3);
Insert into quantiteProduit values('40','38',7);
Insert into quantiteProduit values('66','44',1);
Insert into quantiteProduit values('56','20',7);
Insert into quantiteProduit values('32','3',5);
Insert into quantiteProduit values('38','25',5);
Insert into quantiteProduit values('29','45',1);
Insert into quantiteProduit values('74','7',6);
Insert into quantiteProduit values('6','23',10);
Insert into quantiteProduit values('20','16',6);
Insert into quantiteProduit values('26','22',2);
Insert into quantiteProduit values('74','30',6);
Insert into quantiteProduit values('19','27',9);
Insert into quantiteProduit values('69','38',6);
Insert into quantiteProduit values('33','37',9);
Insert into quantiteProduit values('18','13',1);
Insert into quantiteProduit values('55','21',8);
Insert into quantiteProduit values('12','21',8);
Insert into quantiteProduit values('69','26',2);
Insert into quantiteProduit values('19','46',10);
Insert into quantiteProduit values('55','38',3);
Insert into quantiteProduit values('50','15',5);
Insert into quantiteProduit values('58','5',10);
Insert into quantiteProduit values('55','25',9);
Insert into quantiteProduit values('21','33',8);
Insert into quantiteProduit values('14','3',9);
Insert into quantiteProduit values('97','31',6);
Insert into quantiteProduit values('12','7',4);
Insert into quantiteProduit values('31','9',3);
Insert into quantiteProduit values('66','36',3);
Insert into quantiteProduit values('73','27',7);
Insert into quantiteProduit values('100','50',3);
Insert into quantiteProduit values('70','47',5);
Insert into quantiteProduit values('40','7',6);
Insert into quantiteProduit values('22','38',6);
Insert into quantiteProduit values('14','13',1);
Insert into quantiteProduit values('99','1',10);
Insert into quantiteProduit values('14','32',10);
Insert into quantiteProduit values('63','1',7);
Insert into quantiteProduit values('1','23',6);
Insert into quantiteProduit values('51','38',3);
Insert into quantiteProduit values('73','4',3);
Insert into quantiteProduit values('58','33',6);
Insert into quantiteProduit values('58','45',6);
Insert into quantiteProduit values('56','38',10);
Insert into quantiteProduit values('19','33',7);
Insert into quantiteProduit values('29','44',7);
Insert into quantiteProduit values('86','45',8);
Insert into quantiteProduit values('35','14',5);
Insert into quantiteProduit values('13','39',7);
Insert into quantiteProduit values('96','44',7);
Insert into quantiteProduit values('98','17',5);
Insert into quantiteProduit values('16','13',9);
Insert into quantiteProduit values('28','13',8);
Insert into quantiteProduit values('92','38',10);
Insert into quantiteProduit values('53','30',3);
Insert into quantiteProduit values('47','50',1);
Insert into quantiteProduit values('97','28',2);
Insert into quantiteProduit values('93','25',9);
Insert into quantiteProduit values('87','18',10);
Insert into quantiteProduit values('32','13',10);
Insert into quantiteProduit values('10','33',4);
Insert into quantiteProduit values('72','36',7);
Insert into quantiteProduit values('89','8',7);
Insert into quantiteProduit values('54','13',10);
Insert into quantiteProduit values('99','15',1);
Insert into quantiteProduit values('62','27',8);
Insert into quantiteProduit values('31','7',10);
Insert into quantiteProduit values('9','27',3);
Insert into quantiteProduit values('23','11',6);
Insert into quantiteProduit values('24','5',10);
Insert into quantiteProduit values('92','39',10);
Insert into quantiteProduit values('28','37',2);
Insert into quantiteProduit values('79','44',7);
Insert into quantiteProduit values('54','47',6);
Insert into quantiteProduit values('87','13',2);
Insert into quantiteProduit values('21','1',5);
Insert into quantiteProduit values('1','35',3);
Insert into quantiteProduit values('44','45',7);
Insert into quantiteProduit values('2','29',7);
Insert into quantiteProduit values('89','37',7);
Insert into quantiteProduit values('100','43',10);
Insert into quantiteProduit values('96','40',1);
Insert into quantiteProduit values('14','18',4);
Insert into quantiteProduit values('25','12',2);
Insert into quantiteProduit values('24','47',9);
Insert into quantiteProduit values('93','16',9);
Insert into quantiteProduit values('84','7',7);
Insert into quantiteProduit values('19','3',9);
Insert into quantiteProduit values('69','46',3);
Insert into quantiteProduit values('27','23',6);
Insert into quantiteProduit values('73','7',1);
Insert into quantiteProduit values('88','29',9);
Insert into quantiteProduit values('12','8',7);
Insert into quantiteProduit values('91','40',2);
Insert into quantiteProduit values('7','50',4);
Insert into quantiteProduit values('1','11',7);
Insert into quantiteProduit values('14','21',2);
Insert into quantiteProduit values('70','36',9);
Insert into quantiteProduit values('99','49',6);
Insert into quantiteProduit values('30','4',5);
Insert into quantiteProduit values('15','34',6);
Insert into quantiteProduit values('9','26',10);
Insert into quantiteProduit values('27','43',3);
Insert into quantiteProduit values('62','25',6);
Insert into quantiteProduit values('28','14',4);
Insert into quantiteProduit values('42','2',3);
Insert into quantiteProduit values('47','47',8);
Insert into quantiteProduit values('29','25',6);
Insert into quantiteProduit values('95','20',7);
Insert into quantiteProduit values('46','42',8);
Insert into quantiteProduit values('63','46',2);
Insert into quantiteProduit values('74','9',3);
Insert into quantiteProduit values('99','29',9);
Insert into quantiteProduit values('65','22',6);
Insert into quantiteProduit values('33','36',10);
Insert into quantiteProduit values('22','24',4);
Insert into quantiteProduit values('2','12',5);
Insert into quantiteProduit values('27','5',5);
Insert into quantiteProduit values('71','6',9);
Insert into quantiteProduit values('84','14',1);
Insert into quantiteProduit values('81','43',2);
Insert into quantiteProduit values('35','37',9);
Insert into quantiteProduit values('4','20',3);
Insert into quantiteProduit values('56','11',7);
Insert into quantiteProduit values('25','36',7);
Insert into quantiteProduit values('4','36',4);
Insert into quantiteProduit values('25','24',3);
Insert into quantiteProduit values('93','49',4);
Insert into quantiteProduit values('68','21',4);
Insert into quantiteProduit values('31','17',9);
Insert into quantiteProduit values('12','11',9);
Insert into quantiteProduit values('78','5',3);
Insert into quantiteProduit values('64','32',8);
Insert into quantiteProduit values('38','5',7);
Insert into quantiteProduit values('74','37',10);
Insert into quantiteProduit values('39','41',1);
Insert into quantiteProduit values('9','35',6);
Insert into quantiteProduit values('66','32',6);
Insert into quantiteProduit values('57','7',6);
Insert into quantiteProduit values('83','20',3);
Insert into quantiteProduit values('61','1',6);
Insert into quantiteProduit values('23','18',9);
Insert into quantiteProduit values('77','10',4);
Insert into quantiteProduit values('90','9',5);
Insert into quantiteProduit values('57','1',1);
Insert into quantiteProduit values('76','36',4);
Insert into quantiteProduit values('14','50',4);
Insert into quantiteProduit values('10','25',3);
Insert into quantiteProduit values('46','7',10);
Insert into quantiteProduit values('70','40',9);
Insert into quantiteProduit values('9','40',2);
Insert into quantiteProduit values('40','41',6);
Insert into quantiteProduit values('54','18',9);
Insert into quantiteProduit values('24','37',7);
Insert into quantiteProduit values('11','1',9);
Insert into quantiteProduit values('1','26',6);
Insert into quantiteProduit values('77','17',8);
Insert into quantiteProduit values('74','25',5);
Insert into quantiteProduit values('90','21',3);
Insert into quantiteProduit values('50','11',1);
Insert into quantiteProduit values('15','22',1);
Insert into quantiteProduit values('96','21',3);
Insert into quantiteProduit values('13','34',2);
Insert into quantiteProduit values('42','50',1);
Insert into quantiteProduit values('13','19',4);
Insert into quantiteProduit values('46','5',10);
Insert into quantiteProduit values('11','47',9);
Insert into quantiteProduit values('27','28',7);
Insert into quantiteProduit values('86','29',3);
Insert into quantiteProduit values('48','25',6);
Insert into quantiteProduit values('66','46',10);
Insert into quantiteProduit values('99','47',9);
Insert into quantiteProduit values('29','10',10);
Insert into quantiteProduit values('24','17',6);
Insert into quantiteProduit values('82','4',1);
Insert into quantiteProduit values('86','36',1);
Insert into quantiteProduit values('1','42',8);
Insert into quantiteProduit values('84','39',9);
Insert into quantiteProduit values('7','4',9);
Insert into quantiteProduit values('69','42',1);
Insert into quantiteProduit values('13','42',5);
Insert into quantiteProduit values('96','2',3);
Insert into quantiteProduit values('57','46',9);
Insert into quantiteProduit values('73','47',10);
Insert into quantiteProduit values('50','43',2);
Insert into quantiteProduit values('13','8',10);
Insert into quantiteProduit values('8','27',2);
Insert into quantiteProduit values('75','12',6);
Insert into quantiteProduit values('53','44',10);
Insert into quantiteProduit values('40','24',6);
Insert into quantiteProduit values('38','15',2);
Insert into quantiteProduit values('88','47',5);
Insert into quantiteProduit values('17','8',6);
Insert into quantiteProduit values('64','18',2);
Insert into quantiteProduit values('33','41',1);
Insert into quantiteProduit values('98','34',9);
Insert into quantiteProduit values('7','37',3);
Insert into quantiteProduit values('83','31',3);
Insert into quantiteProduit values('6','25',4);
Insert into quantiteProduit values('98','11',4);
Insert into quantiteProduit values('50','21',4);
Insert into quantiteProduit values('59','42',4);
Insert into quantiteProduit values('82','2',6);
Insert into quantiteProduit values('60','10',7);
Insert into quantiteProduit values('94','46',3);
Insert into quantiteProduit values('74','6',9);
Insert into quantiteProduit values('79','3',2);
Insert into quantiteProduit values('75','46',2);
Insert into quantiteProduit values('88','28',9);
Insert into quantiteProduit values('72','49',10);
Insert into quantiteProduit values('27','42',9);
Insert into quantiteProduit values('74','1',1);
Insert into quantiteProduit values('59','25',8);
Insert into quantiteProduit values('28','8',1);
Insert into quantiteProduit values('46','35',3);
Insert into quantiteProduit values('2','33',10);
Insert into quantiteProduit values('4','41',2);
Insert into quantiteProduit values('38','50',1);
Insert into quantiteProduit values('40','5',7);
Insert into quantiteProduit values('38','26',10);
Insert into quantiteProduit values('12','18',4);
Insert into quantiteProduit values('23','28',5);
Insert into quantiteProduit values('42','50',8);
Insert into quantiteProduit values('70','38',4);

