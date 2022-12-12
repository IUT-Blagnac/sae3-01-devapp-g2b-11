package app;

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
	 * @return un dictionnaire contenant les cl�s et valeurs pr�sentents dans le fichier .txt
	 */
	@Override
	public void run() {
		Map<String, Double> dico = new HashMap<String, Double>();

		// Chemin du fichier
		Path path = Path.of("src/data/fichier.txt"); // chemin du fichier � lire
		List<String> lignes = new ArrayList();
		// on essaye de lire les lignes du fichier contenu au chemin "path"
		try {
			lignes = Files.readAllLines(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // liste qui va contenir les lignes du fichier lu
		String a[] = {""};
		
		// On ajoute ces lignes dans le dictionnaire
		for(String ligne : lignes) {
			a = ligne.split(":", 2);
			dico.put(a[0], Double.valueOf(a[1]));
		}
		
		System.out.println(dico.toString());
	}

}
