<?php  
  function createTableClient($queryF){
        require_once "connect.inc.php"; //connexion à la base de donnée
        $lesclients = oci_parse($connect, $queryF);
        $result = oci_execute($lesclients);

        // On vérifie que des résultats sont trouvés
        if($result == false){
            echo 'Aucun client';
        }

        //on crée un tableau pour afficher les informations obtenues via la requête
        $table = "<br/><table border='2'>
          <caption><center>Table des clients</center></caption>
          <tbody>
            <tr>
                <th>Id Client</th><th>Nom Client</th><th>Prénom Client</th>
                <th>Adresse Client</th><th>Téléphone Client</th><th>Mail Client</th><th>Historique Commande</th>
            </tr>
          </tbody>";

        //si utilisation de array au lieu de assoc : 0=>idclient 2=>nom client 3=>prenom client 4=>adresse client 5=>telephone client 6=>mail client
        while (($infoClients = oci_fetch_assoc($lesclients))!=false) { //on récupère les informations sur tous les clients (actuellement impossible car cela prend trop de mémoire, il faut encore que je cherche une solution. Donc affiche les information du premier client trié dans la base de donnée, et les affiche dans le tableau) 
            // var_dump($infoClients);
             $table .= '<tr><td>'.$infoClients['IDCLIENT'].'</td><td>'.$infoClients['NOMCLIENT'].'</td><td>'.$infoClients['PRENOMCLIENT'].'</td><td>'.$infoClients['ADRESSECLIENT'].'</td><td>'.$infoClients['TELEPHONECLIENT'].'</td><td>'.$infoClients['MAILCLIENT'].'</td><td><a href="HistoCommandeClient?pidClient='.$infoClients['IDCLIENT'].'">Voir</a></td><td><a href="ModifierClient.php?pidClient='.$infoClients['IDCLIENT'].'"><img src="../styleAdmin/uploads/modifier.jpg" style="width:50px;height:50px;"></a></td><td><a href="SupprimerClient.php?pidClient='.$infoClients['IDCLIENT'].'"onclick="return(confirm(\'Êtes-vous sûr de vouloir supprimer ce client ?\'));"><img src="../styleAdmin/uploads/supprimer.jpg" style="width:50px;height:50px;"></a></td></tr>';
        }
          
          $table .= "</table>"; //on termine le tableau
          oci_close($connect); //on ferme la connexion avec la base de donnée
          echo $table; //on affiche le tableau

    }

  function createTableProduit($query){
    require_once "connect.inc.php"; //connexion à la base de donnée
    $produits = oci_parse($connect, $query);
    $result = oci_execute($produits);

    // On vérifie que des résultats sont trouvés
    if($result == false){
        echo 'Aucun produit';
    }

    //on crée un tableau pour afficher les informations obtenues via la requête
    $table = "<br/><table border='2'>
      <caption><center>Table des Produits</center></caption>
      <tbody>
        <tr>
            <th>Id Produit</th><th>Id Catégorie</th><th>Nom Produit</th>
            <th>Prix Produit</th><th>Fournisseur Produit</th><th>Description Produit</th>
            </th><th>Composition Produit</th><th>Quantite Stock</th><th>Promo</th><th>Prix promo</th>
        </tr>
      </tbody>";

    while (($infoProduits = oci_fetch_assoc($produits))!=false) { //on récupère les informations sur tous les produits (actuellement impossible car cela prend trop de mémoire, il faut encore que je cherche une solution. Donc affiche les information du dernier produit trié dans la base de donnée, et les affiche dans le tableau) 
         $table .= '<tr><td>'.$infoProduits['IDPRODUIT'].'</td><td>'.$infoProduits['IDCATEGORIE'].'</td><td>'.$infoProduits['NOMPRODUIT'].'</td><td>'.$infoProduits['PRIXPRODUIT'].'</td><td>'.$infoProduits['FOURNISSEURPRODUIT'].'</td><td>'.$infoProduits['DESCRIPTIONPRODUIT'].'</td><td>'.$infoProduits['COMPOSITIONPRODUIT'].'</td><td>'.$infoProduits['QUANTITESTOCK'].'</td><td>'.$infoProduits['PROMOTION'].'</td><td>'.$infoProduits['PRIXPROMO'].'</td><td><a href="ModifierProduit.php?pidProduit='.$infoProduits['IDPRODUIT'].'"><img src="../styleAdmin/uploads/modifier.jpg" style="width:50px;height:50px;"></a></td><td><a href="SupprimerProduit.php?pidProduit='.$infoProduits['IDPRODUIT'].'"onclick="return(confirm(\'Êtes-vous sûr de vouloir supprimer ce produit ?\'));"><img src="../styleAdmin/uploads/supprimer.jpg" style="width:50px;height:50px;"></a></td></tr>';
    }
      
      $table .= "</table>"; //on termine le tableau
      oci_close($connect); //on ferme la connexion avec la base de donnée
      echo $table; //on affiche le tableau
  }
?>