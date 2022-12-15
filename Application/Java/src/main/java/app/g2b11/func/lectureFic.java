package app.g2b11.func;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

public class lectureFic {
	public static void main(String[] args) throws IOException {
		Map<String, Double> dico = new HashMap<String, Double>();
		
		Timer minuteur = new Timer();
		// permet de r�p�ter l'action toutes les 10 minutes
		minuteur.schedule(new readDataFile(), 0, 1*1000*60*10);
		
	}
	
	/*
	public static String lectureFichier(Map<String, String> dico)  throws IOException{
		
		Path path = Path.of("src/fichier.txt"); // chemin du fichier � lire
		List<String> lignes = Files.readAllLines(path); // liste qui va contenir les lignes du fichier lu
		String a[] = {""};
		
		// affichage des lignes de la liste
		for(String ligne : lignes) {
			a = ligne.split(":", 2);
			dico.put(a[0], a[1]);
		}
		
		return dico.toString();
	}
	*/
}
