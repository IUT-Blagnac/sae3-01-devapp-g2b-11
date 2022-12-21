
<?php
        if(isset($_POST['email']) && isset($_POST['password'])){
            // connexion à la base de données
            require_once("../include/connect.inc.php");
            error_reporting(0);
            
            $username = htmlspecialchars($_POST['email']);
            $password=password_hash(htmlspecialchars($_POST['password']), PASSWORD_DEFAULT);

            if($username !== "" && $password !== ""){
                
                $req2 = "SELECT MOTPASSECLIENT FROM clients WHERE MAILCLIENT = :MAILCLIENT";

                $lemdps = oci_parse($connect, $req2);
                    
                oci_bind_by_name($lemdps, ":MAILCLIENT", $username);
                $result = oci_execute($lemdps);
                while($row=oci_fetch_array($lemdps)){
                    
                    $mdp = $row[0];
                    
            }
                
                // nom d'utilisateur et mot de passe correctes
                if($mdp!=''){
                    
                    if (password_verify (($_POST['password']),$mdp)!=1){
                        echo 'les mots de passe ne sont pas identiques';
                    }else{
                        echo 'les mots de passe sont identique';
                        if(isset($_POST['memo'])){
                            setcookie('cookieIdent', $_POST['email'], time()+60 );
							setcookie('cookieMdp', $_POST['password'], time()+60 );
                        }
                         session_start();
                         
                        $req2 = "SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT";

                        $lemdps = oci_parse($connect, $req2);
                        oci_bind_by_name($lemdps, ":MAILCLIENT", $username);
                        $result = oci_execute($lemdps);
                        while($row=oci_fetch_array($lemdps)){

                            $_SESSION['emailC'] = $row['MAILCLIENT'];
		                    $_SESSION['passwordC'] = $row['MOTPASSECLIENT'];
                            $_SESSION['nomC'] = $row['NOMCLIENT'];
		                    $_SESSION['prenomC'] = $row['PRENOMCLIENT'];
                            $_SESSION['adressC'] = $row['ADRESSECLIENT'];
		                    $_SESSION['telC'] = $row['TELEPHONECLIENT'];
                            
                            
                    
                        }
		                header ('location: ../index.php');
                    }
                } else{
                    
                }
            } else{
               
            }
            oci_close($connect); // fermer la connexion
            
        }
        ?>
			