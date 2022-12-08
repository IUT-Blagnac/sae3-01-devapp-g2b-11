import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;

public class monAction extends TimerTask{
	
	/*
	 * Permet de lire les informations d'un fichier .txt
	 * @return un dictionnaire contenant les clés et valeurs présentents dans le fichier .txt
	 */
	@Override
	public void run() {
		Map<String, String> dico = new HashMap<String, String>();
		
		// Chemin du fichier
		Path path = Path.of("src/fichier.txt"); // chemin du fichier à lire
		List<String> lignes = new ArrayList();
		// on essaye de lire les lignes du fichier contenu au chemin "path"
		try {
			lignes = Files.readAllLines(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // liste qui va contenir les lignes du fichier lu
		String a[] = {""};
		
		// On ajoute c'est lignes dans le dictionnaire
		for(String ligne : lignes) {
			a = ligne.split(":", 2);
			dico.put(a[0], a[1]);
		}
		
		System.out.println(dico.toString());
	}

}
